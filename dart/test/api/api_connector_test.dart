import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('LayrzConnector Constructor Tests', () {
    test('Constructor with minimal parameters', () {
      final uri = Uri.parse('https://api.example.com/graphql');
      final connector = LayrzConnector(uri: uri);

      expect(connector.uri, uri);
      // headers field stores the original headers passed in, not the modified ones
      expect(connector.headers, {});
      expect(connector.timeout, isNull);
      expect(connector.apiToken, isNull);
    });

    test('Constructor with custom headers', () {
      final uri = Uri.parse('https://api.example.com/graphql');
      final customHeaders = {'X-Custom': 'value', 'User-Agent': 'MyApp/1.0'};

      final connector = LayrzConnector(
        uri: uri,
        headers: customHeaders,
      );

      expect(connector.uri, uri);
      expect(connector.headers['X-Custom'], 'value');
      expect(connector.headers['User-Agent'], 'MyApp/1.0');
      // headers field stores original headers, not auto-added ones
      expect(connector.headers.containsKey('Content-Type'), false);
    });

    test('Constructor with apiToken stores apiToken field', () {
      final uri = Uri.parse('https://api.example.com/graphql');
      final token = 'test-token-xyz';

      final connector = LayrzConnector(
        uri: uri,
        apiToken: token,
      );

      expect(connector.apiToken, token);
      // Authorization header is added internally to localHeaders, not stored in headers field
      expect(connector.headers.containsKey('Authorization'), false);
    });

    test('Constructor with custom timeout', () {
      final uri = Uri.parse('https://api.example.com/graphql');
      final timeout = Duration(seconds: 30);

      final connector = LayrzConnector(
        uri: uri,
        timeout: timeout,
      );

      expect(connector.timeout, timeout);
    });

    test('Constructor with all parameters', () {
      final uri = Uri.parse('https://api.example.com/graphql');
      final headers = {'X-Custom': 'value'};
      final timeout = Duration(seconds: 45);
      final token = 'my-token';

      final connector = LayrzConnector(
        uri: uri,
        headers: headers,
        timeout: timeout,
        apiToken: token,
      );

      expect(connector.uri, uri);
      expect(connector.headers['X-Custom'], 'value');
      // headers field stores original headers only
      expect(connector.headers.length, 1);
      expect(connector.timeout, timeout);
      expect(connector.apiToken, token);
    });

    test('Constructor throws ArgumentError for invalid Content-Type', () {
      final uri = Uri.parse('https://api.example.com/graphql');
      final invalidHeaders = {'Content-Type': 'text/plain'};

      expect(
        () => LayrzConnector(
          uri: uri,
          headers: invalidHeaders,
        ),
        throwsArgumentError,
      );
    });

    test('Constructor throws ArgumentError for application/xml Content-Type', () {
      final uri = Uri.parse('https://api.example.com/graphql');
      final invalidHeaders = {'Content-Type': 'application/xml'};

      expect(
        () => LayrzConnector(
          uri: uri,
          headers: invalidHeaders,
        ),
        throwsArgumentError,
      );
    });

    test('Constructor accepts application/json with charset in Content-Type', () {
      final uri = Uri.parse('https://api.example.com/graphql');
      final headers = {'Content-Type': 'application/json; charset=utf-8'};

      final connector = LayrzConnector(
        uri: uri,
        headers: headers,
      );

      expect(connector.headers['Content-Type'], 'application/json; charset=utf-8');
    });

    test('Constructor preserves custom header case when Content-Type is valid', () {
      final uri = Uri.parse('https://api.example.com/graphql');
      final headers = {
        'X-API-Key': 'secret-key',
        'X-REQUEST-ID': 'req-123',
      };

      final connector = LayrzConnector(
        uri: uri,
        headers: headers,
      );

      // Custom headers are preserved as passed
      expect(connector.headers['X-API-Key'], 'secret-key');
      expect(connector.headers['X-REQUEST-ID'], 'req-123');
      expect(connector.headers.length, 2);
    });

    test('Constructor with empty custom headers', () {
      final uri = Uri.parse('https://api.example.com/graphql');

      final connector = LayrzConnector(
        uri: uri,
        headers: {},
      );

      expect(connector.headers.isEmpty, true);
    });

    test('URI field is immutable', () {
      final uri = Uri.parse('https://api.example.com/graphql');
      final connector = LayrzConnector(uri: uri);

      expect(connector.uri, uri);
      expect(identical(connector.uri, uri), true);
    });

    test('Headers field is immutable after construction', () {
      final uri = Uri.parse('https://api.example.com/graphql');
      final connector = LayrzConnector(uri: uri);

      final headersAfterConstruction = connector.headers;
      // headers field stores original headers, which are empty when not provided
      expect(headersAfterConstruction.isEmpty, true);
    });

    test('apiToken is null when not provided', () {
      final uri = Uri.parse('https://api.example.com/graphql');
      final connector = LayrzConnector(uri: uri);

      expect(connector.apiToken, isNull);
    });

    test('apiToken is stored and accessible', () {
      final uri = Uri.parse('https://api.example.com/graphql');
      final token = 'secret-token-abc123';

      final connector = LayrzConnector(
        uri: uri,
        apiToken: token,
      );

      expect(connector.apiToken, token);
    });

    test('Multiple instances do not share state', () {
      final uri = Uri.parse('https://api.example.com/graphql');

      final connector1 = LayrzConnector(
        uri: uri,
        apiToken: 'token1',
      );

      final connector2 = LayrzConnector(
        uri: uri,
        apiToken: 'token2',
      );

      expect(connector1.apiToken, 'token1');
      expect(connector2.apiToken, 'token2');
      expect(connector1.apiToken != connector2.apiToken, true);
    });

    test('Constructor with different URIs', () {
      final uri1 = Uri.parse('https://api1.example.com/graphql');
      final uri2 = Uri.parse('https://api2.example.com/graphql');

      final connector1 = LayrzConnector(uri: uri1);
      final connector2 = LayrzConnector(uri: uri2);

      expect(connector1.uri, uri1);
      expect(connector2.uri, uri2);
      expect(connector1.uri.toString(), 'https://api1.example.com/graphql');
      expect(connector2.uri.toString(), 'https://api2.example.com/graphql');
    });

    test('Timeout is stored correctly for various durations', () {
      final uri = Uri.parse('https://api.example.com/graphql');

      final connector1 = LayrzConnector(
        uri: uri,
        timeout: Duration(seconds: 5),
      );

      final connector2 = LayrzConnector(
        uri: uri,
        timeout: Duration(minutes: 1),
      );

      final connector3 = LayrzConnector(
        uri: uri,
        timeout: Duration(milliseconds: 500),
      );

      expect(connector1.timeout, Duration(seconds: 5));
      expect(connector2.timeout, Duration(minutes: 1));
      expect(connector3.timeout, Duration(milliseconds: 500));
    });
  });

  group('LayrzConnector Header Composition Tests', () {
    test('Headers field stores only original headers passed in', () {
      final uri = Uri.parse('https://api.example.com/graphql');
      final connector = LayrzConnector(uri: uri);

      // The headers field stores the original headers, not the auto-added ones
      // Content-Type and other headers are added internally to localHeaders
      // and passed to Dio, but not reflected in the headers field
      expect(connector.headers.isEmpty, true);
    });

    test('apiToken field is accessible', () {
      final uri = Uri.parse('https://api.example.com/graphql');
      final connector = LayrzConnector(
        uri: uri,
        apiToken: 'mytoken',
      );

      expect(connector.apiToken, 'mytoken');
    });

    test('apiToken is null when not provided', () {
      final uri = Uri.parse('https://api.example.com/graphql');
      final connector = LayrzConnector(
        uri: uri,
        apiToken: null,
      );

      expect(connector.apiToken, isNull);
    });

    test('Constructor accepts custom headers alongside apiToken', () {
      final uri = Uri.parse('https://api.example.com/graphql');
      final customHeaders = {'X-Request-ID': 'req-abc', 'X-Tenant': 'tenant-xyz'};

      final connector = LayrzConnector(
        uri: uri,
        headers: customHeaders,
        apiToken: 'token123',
      );

      // Custom headers are stored as-is
      expect(connector.headers['X-Request-ID'], 'req-abc');
      expect(connector.headers['X-Tenant'], 'tenant-xyz');
      expect(connector.apiToken, 'token123');
    });

    test('LayrzApiExtras version and name are used internally', () {
      final uri = Uri.parse('https://api.example.com/graphql');
      LayrzApiExtras.version = '2.1.0';
      LayrzApiExtras.name = 'TestApp';

      try {
        // Constructor accepts the LayrzApiExtras values
        final connector = LayrzConnector(uri: uri);
        // These values are passed to Dio internally, not stored in headers field
        expect(connector.uri, uri);
      } finally {
        LayrzApiExtras.version = '';
        LayrzApiExtras.name = '';
      }
    });

    test('Content-Type validation happens before storage', () {
      final uri = Uri.parse('https://api.example.com/graphql');

      // Valid Content-Type with charset is accepted
      final connector = LayrzConnector(
        uri: uri,
        headers: {'Content-Type': 'application/json; charset=utf-8'},
      );

      expect(
        connector.headers['Content-Type'],
        'application/json; charset=utf-8',
      );
    });
  });

  group('LayrzConnector Field Access Tests', () {
    test('All constructor parameters are accessible as fields', () {
      final uri = Uri.parse('https://api.example.com/graphql');
      final headers = {'X-Custom': 'value'};
      final timeout = Duration(seconds: 15);
      final token = 'my-token';

      final connector = LayrzConnector(
        uri: uri,
        headers: headers,
        timeout: timeout,
        apiToken: token,
      );

      expect(connector.uri, uri);
      expect(connector.timeout, timeout);
      expect(connector.apiToken, token);
      expect(connector.headers.isNotEmpty, true);
    });

    test('URI is accessible and correct', () {
      final uri = Uri.parse('https://graphql.example.com:8080/api/v1');
      final connector = LayrzConnector(uri: uri);

      expect(connector.uri.scheme, 'https');
      expect(connector.uri.host, 'graphql.example.com');
      expect(connector.uri.port, 8080);
      expect(connector.uri.path, '/api/v1');
    });

    test('Timeout duration is correct', () {
      final uri = Uri.parse('https://api.example.com/graphql');
      final timeout = Duration(seconds: 30);

      final connector = LayrzConnector(
        uri: uri,
        timeout: timeout,
      );

      expect(connector.timeout?.inSeconds, 30);
    });
  });

  group('LayrzConnector ArgumentError Tests', () {
    test('Throws ArgumentError message for invalid Content-Type', () {
      final uri = Uri.parse('https://api.example.com/graphql');

      expect(
        () => LayrzConnector(
          uri: uri,
          headers: {'Content-Type': 'text/html'},
        ),
        throwsA(
          isA<ArgumentError>().having(
            (e) => e.message,
            'message',
            'Content-Type must be application/json',
          ),
        ),
      );
    });

    test('Throws ArgumentError for any non-JSON content type', () {
      final uri = Uri.parse('https://api.example.com/graphql');
      final nonJsonTypes = [
        'text/plain',
        'text/html',
        'application/xml',
        'image/png',
        'application/octet-stream',
      ];

      for (final contentType in nonJsonTypes) {
        expect(
          () => LayrzConnector(
            uri: uri,
            headers: {'Content-Type': contentType},
          ),
          throwsArgumentError,
          reason: 'Should throw for Content-Type: $contentType',
        );
      }
    });
  });

  group('LayrzConnector Edge Cases', () {
    test('Constructor with very long apiToken', () {
      final uri = Uri.parse('https://api.example.com/graphql');
      final longToken = 'x' * 1000;

      final connector = LayrzConnector(
        uri: uri,
        apiToken: longToken,
      );

      expect(connector.apiToken, longToken);
      // Authorization header is set internally, not stored in headers field
      expect(connector.apiToken?.length, 1000);
    });

    test('Constructor with special characters in custom headers', () {
      final uri = Uri.parse('https://api.example.com/graphql');
      final headers = {
        'X-Special': 'value with spaces and !@#\$%',
        'X-Unicode': 'héllo wørld 🌍',
      };

      final connector = LayrzConnector(
        uri: uri,
        headers: headers,
      );

      expect(connector.headers['X-Special'], 'value with spaces and !@#\$%');
      expect(connector.headers['X-Unicode'], 'héllo wørld 🌍');
    });

    test('Constructor with path in URI', () {
      final uriWithPath = Uri.parse('https://api.example.com/v1/graphql/');
      final connector = LayrzConnector(uri: uriWithPath);

      expect(connector.uri.path, '/v1/graphql/');
    });

    test('Constructor preserves URI query parameters', () {
      final uriWithQuery = Uri.parse('https://api.example.com/graphql?key=value');
      final connector = LayrzConnector(uri: uriWithQuery);

      expect(connector.uri.queryParameters['key'], 'value');
    });

    test('Constructor with URI fragment is preserved', () {
      final uri = Uri.parse('https://api.example.com/graphql#section');
      final connector = LayrzConnector(uri: uri);

      expect(connector.uri.fragment, 'section');
    });

    test('Zero timeout duration is stored correctly', () {
      final uri = Uri.parse('https://api.example.com/graphql');
      final connector = LayrzConnector(
        uri: uri,
        timeout: Duration.zero,
      );

      expect(connector.timeout, Duration.zero);
      expect(connector.timeout?.inMilliseconds, 0);
    });
  });

  group('LayrzConnector LayrzApiExtras Warning Tests', () {
    // Store original values to restore after each test
    late String originalVersion;
    late String originalName;

    setUp(() {
      originalVersion = LayrzApiExtras.version;
      originalName = LayrzApiExtras.name;
    });

    tearDown(() {
      LayrzApiExtras.version = originalVersion;
      LayrzApiExtras.name = originalName;
    });

    test('Warning emitted when LayrzApiExtras.version is empty', () async {
      final uri = Uri.parse('https://api.example.com/graphql');
      LayrzApiExtras.version = '';
      LayrzApiExtras.name = 'TestApp';

      final warnings = <String>[];
      final subscription = Log.stream.listen((entry) {
        if (entry.level.name == 'warning') {
          warnings.add(entry.message);
        }
      });

      try {
        LayrzConnector(uri: uri);

        // Drain pending events
        await Future.delayed(Duration.zero);

        expect(
          warnings.any((msg) => msg.contains('Missing `LayrzApiExtras.version`')),
          true,
          reason: 'Expected warning about missing version',
        );
      } finally {
        await subscription.cancel();
      }
    });

    test('No version warning when LayrzApiExtras.version is set', () async {
      final uri = Uri.parse('https://api.example.com/graphql');
      LayrzApiExtras.version = '1.0.0';
      LayrzApiExtras.name = 'TestApp';

      final warnings = <String>[];
      final subscription = Log.stream.listen((entry) {
        if (entry.level.name == 'warning') {
          warnings.add(entry.message);
        }
      });

      try {
        LayrzConnector(uri: uri);

        // Drain pending events
        await Future.delayed(Duration.zero);

        expect(
          warnings.any((msg) => msg.contains('Missing `LayrzApiExtras.version`')),
          false,
          reason: 'Should not warn about version when it is set',
        );
      } finally {
        await subscription.cancel();
      }
    });

    test('Warning emitted when LayrzApiExtras.name is empty', () async {
      final uri = Uri.parse('https://api.example.com/graphql');
      LayrzApiExtras.version = '1.0.0';
      LayrzApiExtras.name = '';

      final warnings = <String>[];
      final subscription = Log.stream.listen((entry) {
        if (entry.level.name == 'warning') {
          warnings.add(entry.message);
        }
      });

      try {
        LayrzConnector(uri: uri);

        // Drain pending events
        await Future.delayed(Duration.zero);

        expect(
          warnings.any((msg) => msg.contains('Missing `LayrzApiExtras.name`')),
          true,
          reason: 'Expected warning about missing name',
        );
      } finally {
        await subscription.cancel();
      }
    });

    test('No name warning when LayrzApiExtras.name is set', () async {
      final uri = Uri.parse('https://api.example.com/graphql');
      LayrzApiExtras.version = '1.0.0';
      LayrzApiExtras.name = 'TestApp';

      final warnings = <String>[];
      final subscription = Log.stream.listen((entry) {
        if (entry.level.name == 'warning') {
          warnings.add(entry.message);
        }
      });

      try {
        LayrzConnector(uri: uri);

        // Drain pending events
        await Future.delayed(Duration.zero);

        expect(
          warnings.any((msg) => msg.contains('Missing `LayrzApiExtras.name`')),
          false,
          reason: 'Should not warn about name when it is set',
        );
      } finally {
        await subscription.cancel();
      }
    });

    test('Both warnings emitted when both version and name are empty', () async {
      final uri = Uri.parse('https://api.example.com/graphql');
      LayrzApiExtras.version = '';
      LayrzApiExtras.name = '';

      final warnings = <String>[];
      final subscription = Log.stream.listen((entry) {
        if (entry.level.name == 'warning') {
          warnings.add(entry.message);
        }
      });

      try {
        LayrzConnector(uri: uri);

        // Drain pending events
        await Future.delayed(Duration.zero);

        final versionWarning = warnings.any((msg) => msg.contains('Missing `LayrzApiExtras.version`'));
        final nameWarning = warnings.any((msg) => msg.contains('Missing `LayrzApiExtras.name`'));

        expect(versionWarning, true, reason: 'Expected warning about missing version');
        expect(nameWarning, true, reason: 'Expected warning about missing name');
      } finally {
        await subscription.cancel();
      }
    });

    test('No warnings emitted when both version and name are set', () async {
      final uri = Uri.parse('https://api.example.com/graphql');
      LayrzApiExtras.version = '1.0.0';
      LayrzApiExtras.name = 'TestApp';

      final warnings = <String>[];
      final subscription = Log.stream.listen((entry) {
        if (entry.level.name == 'warning') {
          warnings.add(entry.message);
        }
      });

      try {
        LayrzConnector(uri: uri);

        // Drain pending events
        await Future.delayed(Duration.zero);

        final versionWarning = warnings.any((msg) => msg.contains('Missing `LayrzApiExtras.version`'));
        final nameWarning = warnings.any((msg) => msg.contains('Missing `LayrzApiExtras.name`'));

        expect(versionWarning, false, reason: 'Should not warn about version when it is set');
        expect(nameWarning, false, reason: 'Should not warn about name when it is set');
      } finally {
        await subscription.cancel();
      }
    });
  });
}
