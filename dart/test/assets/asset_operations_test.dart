import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('Asset.parseUploadResponse', () {
    Map<String, dynamic> body(Object? status, Object? errors) => {
      'data': {
        'uploadAssetsFromFile': {'status': status, 'errors': errors},
      },
    };

    test('OK has no errors', () {
      final (status, errors, _) = Asset.parseUploadResponse(body('OK', null), 'uploadAssetsFromFile');
      expect(status, ApiStatus.ok);
      expect(errors, isNull);
    });

    test('keeps a text error under the message key', () {
      final (status, errors, _) = Asset.parseUploadResponse(body('BADREQUEST', 'Bad file'), 'uploadAssetsFromFile');
      expect(status, isNot(ApiStatus.ok));
      expect(errors, {Asset.uploadMessageErrorKey: 'Bad file'});
    });

    test('keeps map errors and wraps list errors', () {
      expect(Asset.parseUploadResponse(body('BADREQUEST', {'file': 'x'}), 'uploadAssetsFromFile').$2, {'file': 'x'});
      expect(Asset.parseUploadResponse(body('BADREQUEST', [2, 5]), 'uploadAssetsFromFile').$2, {
        'rows': [2, 5],
      });
    });

    test('an unexpected body is an internal error', () {
      expect(Asset.parseUploadResponse({'data': null}, 'uploadAssetsFromFile').$1, ApiStatus.internalError);
      expect(Asset.parseUploadResponse(body('OK', null), 'uploadExitsFile').$1, ApiStatus.internalError);
    });
  });

  group('AssetSensorImage', () {
    test('decodes the driveImagesFromSensors item', () {
      final image = AssetSensorImage.fromJson({
        'fileId': 'f1',
        'sensorId': 's1',
        'serial': null,
        'lastModified': 1700000000,
      });
      expect(image.fileId, 'f1');
      expect(image.sensorId, 's1');
      expect(image.lastModified, DateTime.fromMillisecondsSinceEpoch(1700000000 * 1000));
    });
  });
}
