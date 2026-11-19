import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

Map<String, dynamic> _simpleJson() => {
  'id': '1',
  'name': 'Checklist',
  'mode': 'SIMPLE',
  'tasks': [
    {'question': 'Is it ok?', 'answer': 'BOOLEAN', 'choices': <String>[], 'minValue': 0, 'maxValue': 0},
    {
      'question': 'Pick',
      'answer': 'CHOICE',
      'choices': ['a', 'b'],
      'minValue': 0,
      'maxValue': 0,
    },
  ],
  'pages': <Map<String, dynamic>>[],
  'associatedTriggers': [
    {'id': '7', 'name': 'Trigger', 'code': 'T-1', 'kind': 'CASES'},
  ],
  'numOfTasks': 2,
  'numOfPages': 0,
  'numOfBlocks': 0,
  'access': [
    {
      'id': '3',
      'read': true,
      'write': false,
      'manage': false,
      'objectId': '1',
      'userId': '9',
      'module': 'CAREPROTOCOLS',
    },
  ],
};

Map<String, dynamic> _conciergeJson() => {
  'id': '2',
  'name': 'Concierge',
  'mode': 'CONCIERGE',
  'tasks': <Map<String, dynamic>>[],
  'pages': [
    {
      'title': 'Page 1',
      'blocks': [
        {
          'name': 'Amount',
          'blockType': 'NUMBER',
          'showWhen': null,
          'configuration': {'min': 0.0, 'max': 10.0, 'asInt': true, 'choices': <String>[]},
        },
        {
          'name': 'Notes',
          'blockType': 'TEXT',
          'showWhen': {'validator': 'ALWAYS'},
          'configuration': {'allowEmpty': null, 'min': 1.0, 'max': 5.0, 'asInt': null},
        },
        {'name': 'Separator', 'blockType': 'SEPARATOR', 'showWhen': null, 'configuration': null},
      ],
    },
  ],
  'numOfTasks': 0,
  'numOfPages': 1,
  'numOfBlocks': 3,
};

void main() {
  group('CareProtocol decoding', () {
    test('SIMPLE mode decodes tasks, triggers and access', () {
      final protocol = CareProtocol.fromJson(_simpleJson());

      expect(protocol.mode, CareProtocolMode.simple);
      expect(protocol.tasks, hasLength(2));
      expect(protocol.tasks.first.answer, AnswerKind.boolean);
      expect(protocol.associatedTriggers, hasLength(1));
      expect(protocol.access, hasLength(1));
      expect(protocol.numOfTasks, 2);
    });

    test('CONCIERGE mode tolerates null showWhen, null configuration and absent or null allowEmpty', () {
      final protocol = CareProtocol.fromJson(_conciergeJson());
      final blocks = protocol.pages.single.blocks;

      expect(protocol.mode, CareProtocolMode.concierge);
      expect(blocks, hasLength(3));
      expect(blocks[0].configuration?.asInt, true);
      expect(blocks[0].configuration?.allowEmpty, false);
      expect(blocks[0].showWhen, isNull);
      expect(blocks[1].configuration?.allowEmpty, false);
      expect(blocks[1].configuration?.asInt, isNull);
      expect(blocks[2].configuration, isNull);
    });

    test('edit pattern CareProtocolInput.fromJson(toJson()) keeps asInt', () {
      final protocol = CareProtocol.fromJson(_conciergeJson());
      final input = CareProtocolInput.fromJson(protocol.toJson());

      expect(input.id, '2');
      expect(input.mode, CareProtocolMode.concierge);
      expect(input.pages.single.blocks.first.configuration?.asInt, true);
      expect(input.pages.single.blocks.first.configuration?.max, 10.0);
    });

    test('Input toJson uses the wire keys of the backend', () {
      final input = CareProtocolInput(
        name: 'Protocol',
        mode: CareProtocolMode.concierge,
        tasks: [CareTaskInput(question: 'Q', answer: AnswerKind.range, minValue: 1, maxValue: 5)],
        pages: [
          ConciergeFormPageInput(
            title: 'P',
            blocks: [
              ConciergeBlockInput(
                name: 'Block',
                blockType: ConciergeFormBlockType.number,
                showWhen: ConciergeFormBlockDisplayConditionInput(),
                configuration: ConciergeFormBlockConfigurationInput(asInt: true, allowEmpty: false, isMultiple: false),
              ),
            ],
          ),
        ],
      );

      final json = input.toJson();
      final task = (json['tasks'] as List).first as Map<String, dynamic>;
      final block = ((json['pages'] as List).first as Map<String, dynamic>)['blocks'][0] as Map<String, dynamic>;
      final config = block['configuration'] as Map<String, dynamic>;

      expect(json['mode'], 'CONCIERGE');
      expect(task.keys, containsAll(['question', 'answer', 'choices', 'minValue', 'maxValue']));
      expect(task['answer'], 'RANGE');
      expect(block['blockType'], 'NUMBER');
      expect(block['showWhen'], containsPair('validator', 'ALWAYS'));
      expect(config, containsPair('asInt', true));
      expect(config, containsPair('allowEmpty', false));
      expect(config, containsPair('isMultiple', false));
    });
  });

  group('CareProtocolInput.removeNulls', () {
    test('removes nested nulls in maps and lists of maps', () {
      final result = CareProtocolInput.removeNulls({
        'id': null,
        'name': 'x',
        'pages': [
          {
            'title': 't',
            'blocks': [
              {
                'name': 'b',
                'showWhen': null,
                'configuration': {'min': null, 'max': 3, 'asInt': false},
              },
            ],
          },
        ],
      });

      expect(result, {
        'name': 'x',
        'pages': [
          {
            'title': 't',
            'blocks': [
              {
                'name': 'b',
                'configuration': {'max': 3, 'asInt': false},
              },
            ],
          },
        ],
      });
    });

    test('keeps non-null values such as false, zero and empty values', () {
      final source = {
        'a': false,
        'b': 0,
        'c': '',
        'd': <String>[],
        'e': <String, dynamic>{},
        'f': ['x', 1],
      };

      expect(CareProtocolInput.removeNulls(source), source);
    });

    test('payload of a new protocol has no id and no null at any depth', () {
      final input = CareProtocolInput(
        name: 'Protocol',
        mode: CareProtocolMode.concierge,
        pages: [
          ConciergeFormPageInput(
            title: 'P',
            blocks: [ConciergeBlockInput(name: 'Block')],
          ),
        ],
      );

      final payload = input.payload;
      final block = ((payload['pages'] as List).first as Map)['blocks'][0] as Map;

      expect(payload.containsKey('id'), false);
      expect(block.containsKey('configuration'), false);
      expect(block, containsPair('name', 'Block'));
    });
  });

  group('GraphQL documents', () {
    test('deleteMutation declares ids exactly as the backend, [ID]!', () {
      final document = CareProtocol.deleteMutation(['1', '2']).generated;

      expect(document, contains(r'$ids: [ID]!'));
      expect(document, isNot(contains('[ID!]')));
      expect(document, contains(r'deleteCareProtocols(ids: $ids)'));
    });

    test('listQuery selects the lightweight fields only', () {
      final document = CareProtocol.listQuery().generated;

      for (final field in ['id', 'name', 'mode', 'numOfTasks', 'numOfPages', 'numOfBlocks']) {
        expect(document, contains(field));
      }
      expect(document, isNot(contains('tasks')));
      expect(document, isNot(contains('access')));
    });

    test('detailQuery uses the full fragment with id, access and triggers', () {
      final document = CareProtocol.detailQuery('5').generated;

      expect(document, contains(r'query careProtocols($id: ID!)'));
      expect(document, contains('fragment careProtocolFragment on CareProtocol'));
      expect(document, contains('fragment accessFragment on AccessPermission'));
      expect(document, contains('associatedTriggers'));
      expect(document, contains('asInt'));
      expect(document, contains('showWhen'));
    });

    test('saveMutation declares data as CareProtocolInput!', () {
      final document = CareProtocolInput.saveMutation('addCareProtocol', {}).generated;

      expect(document, contains(r'$data: CareProtocolInput!'));
      expect(document, contains(r'addCareProtocol(data: $data)'));
    });
  });
}
