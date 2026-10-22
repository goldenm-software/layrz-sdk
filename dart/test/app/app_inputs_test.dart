import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

Map<String, dynamic> _roundTrip(Map<String, dynamic> json) => jsonDecode(jsonEncode(json)) as Map<String, dynamic>;

AppDesign _design() => AppDesign(
  mainColor: const Color(0xFF112233),
  theme: AppTheme.blue,
  favicons: const AppThemedAsset(normal: 'fav.png', white: 'fav-w.png'),
  logos: const AppThemedAsset(normal: 'logo.png', white: 'logo-w.png'),
  appicon: 'icon.png',
  login: const AppLoginDesign(
    backgroundColor: Color(0xFF445566),
    backgroundImage: 'bg.png',
    mode: BackgroundMode.wallpaper,
    description: 'Welcome',
    design: LayoutDesign.left,
  ),
  titleFont: const AppFont(source: FontSource.uri, name: 'Title', uri: 'https://f/title.ttf'),
  bodyFont: const AppFont(name: 'Body'),
);

void main() {
  group('AppLegalInput.fromLegal', () {
    test('defaults every field to an empty string', () {
      final input = AppLegalInput.fromLegal(null);
      expect(input.companyName, '');
      expect(input.companyUrl, '');
      expect(input.privacyPolicy, '');
    });

    test('copies every field', () {
      final input = AppLegalInput.fromLegal(
        const AppLegal(companyName: 'Acme', companyUrl: 'https://acme.io', privacyPolicy: 'https://acme.io/p'),
      );
      expect(input.companyName, 'Acme');
      expect(input.companyUrl, 'https://acme.io');
      expect(input.privacyPolicy, 'https://acme.io/p');
    });
  });

  group('AppDesignInput.fromDesign', () {
    test('fills missing values with the backend defaults', () {
      final input = AppDesignInput.fromDesign(null);
      expect(input.theme, AppTheme.custom);
      expect(input.mainColor, const Color(0xFF001E60));
      expect(input.favicons.normal, '');
      expect(input.favicons.white, '');
      expect(input.logos.normal, '');
      expect(input.logos.white, '');
      expect(input.login.backgroundColor, const Color(0xFF001E60));
      expect(input.login.backgroundImage, isNull);
      expect(input.login.mode, BackgroundMode.solid);
      expect(input.login.description, isNull);
      expect(input.login.design, LayoutDesign.right);
      for (final font in [input.titleFont, input.bodyFont]) {
        expect(font.source, FontSource.google);
        expect(font.name, 'Fira Sans Condensed');
        expect(font.uri, isNull);
      }
    });

    test('copies every value of the design', () {
      final input = AppDesignInput.fromDesign(_design());
      expect(input.theme, AppTheme.blue);
      expect(input.mainColor, const Color(0xFF112233));
      expect(input.favicons.normal, 'fav.png');
      expect(input.favicons.white, 'fav-w.png');
      expect(input.logos.normal, 'logo.png');
      expect(input.logos.white, 'logo-w.png');
      expect(input.login.backgroundColor, const Color(0xFF445566));
      expect(input.login.backgroundImage, 'bg.png');
      expect(input.login.mode, BackgroundMode.wallpaper);
      expect(input.login.description, 'Welcome');
      expect(input.login.design, LayoutDesign.left);
      expect(input.titleFont.source, FontSource.uri);
      expect(input.titleFont.name, 'Title');
      expect(input.titleFont.uri, 'https://f/title.ttf');
      expect(input.bodyFont.source, FontSource.google);
      expect(input.bodyFont.name, 'Body');
    });
  });

  group('RegisteredAppInput', () {
    final app = RegisteredApp(
      id: 'app-1',
      name: 'Fleet',
      nickname: 'fleet',
      sourceId: 'src-1',
      isCustomized: true,
      legalInformation: const AppLegal(companyName: 'Acme', companyUrl: 'u', privacyPolicy: 'p'),
      designInformation: _design(),
      instances: [AppInstance(id: 'i1', appId: 'app-1', platform: AppPlatform.web)],
    );

    test('fromApp maps the app and never copies its instances', () {
      final input = RegisteredAppInput.fromApp(app);
      expect(input.id, 'app-1');
      expect(input.name, 'Fleet');
      expect(input.nickname, 'fleet');
      expect(input.sourceId, 'src-1');
      expect(input.isCustomized, isTrue);
      expect(input.legalInformation.companyName, 'Acme');
      expect(input.designInformation.mainColor, const Color(0xFF112233));
      expect(input.instances, isEmpty);
    });

    test('fromApp defaults isCustomized to false and nested inputs to backend defaults', () {
      final input = RegisteredAppInput.fromApp(RegisteredApp(id: 'a', name: 'n', nickname: 'k', sourceId: 's'));
      expect(input.isCustomized, isFalse);
      expect(input.legalInformation.companyName, '');
      expect(input.designInformation.mainColor, const Color(0xFF001E60));
    });

    test('fromAvailable builds a blank customized registration of the source', () {
      final source = AvailableApp(
        id: 'src-9',
        name: 'Base',
        appId: 'com.base',
        onlyCustomized: false,
        legalInformation: const AppLegal(companyName: 'Base Co', companyUrl: 'u', privacyPolicy: 'p'),
      );
      final input = RegisteredAppInput.fromAvailable(source);
      expect(input.id, isNull);
      expect(input.sourceId, 'src-9');
      expect(input.name, '');
      expect(input.nickname, '');
      expect(input.isCustomized, isTrue);
      expect(input.legalInformation.companyName, 'Base Co');
      expect(input.designInformation.theme, AppTheme.custom);
      expect(input.instances, isEmpty);
    });

    test('JSON round trip keeps every sent field and never sends isCustomized', () {
      final input = RegisteredAppInput.fromApp(app)
        ..instances = [AppInstanceInput(appId: 'app-1', platform: AppPlatform.ios, appIdentifier: 'com.x')];
      final json = _roundTrip(input.toJson());
      expect(json.containsKey('isCustomized'), isFalse);
      expect(json['sourceId'], 'src-1');
      expect((json['instances'] as List).single['platform'], 'IOS');

      final back = RegisteredAppInput.fromJson(json);
      expect(back.toJson(), _roundTrip(input.toJson()));
      expect(back.isCustomized, isFalse);
    });

    test('clone is a deep copy that keeps isCustomized', () {
      final input = RegisteredAppInput.fromApp(app);
      final copy = input.clone();
      copy.legalInformation.companyName = 'Changed';
      expect(input.legalInformation.companyName, 'Acme');
      expect(copy.isCustomized, isTrue);
    });

    test('the edit payload omits instances', () {
      final input = RegisteredAppInput.fromApp(app)
        ..instances = [AppInstanceInput(appId: 'app-1', platform: AppPlatform.web)];
      final payload = input.toPayload();
      expect(payload.containsKey('instances'), isFalse);
      expect(payload['id'], 'app-1');
    });

    test('the registration payload sends instances', () {
      final input = RegisteredAppInput.fromAvailable(
        AvailableApp(id: 'src', name: 'B', appId: 'b', onlyCustomized: true),
      )..instances = [AppInstanceInput(appId: 'src', platform: AppPlatform.web, host: 'x.layrz.app')];
      final payload = _roundTrip(input.toPayload());
      expect((payload['instances'] as List).single['host'], 'x.layrz.app');
    });
  });

  group('AppWithoutCustomizationInput', () {
    test('defaults the domain to layrz.app', () {
      final input = AppWithoutCustomizationInput(sourceId: 's');
      expect(input.id, isNull);
      expect(input.nickname, '');
      expect(input.subdomain, '');
      expect(input.domain, 'layrz.app');
    });

    test('JSON round trip', () {
      final input = AppWithoutCustomizationInput(sourceId: 's', nickname: 'n', subdomain: 'fleet', domain: 'x.io');
      final json = _roundTrip(input.toJson());
      expect(json, {'id': null, 'sourceId': 's', 'nickname': 'n', 'subdomain': 'fleet', 'domain': 'x.io'});
      expect(AppWithoutCustomizationInput.fromJson(json).toJson(), json);
    });
  });

  group('AppInstanceInput', () {
    test('defaults every string to empty', () {
      final input = AppInstanceInput(appId: 'a', platform: AppPlatform.windows);
      expect(input.id, isNull);
      expect(input.appIdentifier, '');
      expect(input.developerName, '');
      expect(input.developerIdentifier, '');
      expect(input.host, '');
    });

    test('JSON round trip', () {
      final input = AppInstanceInput(
        appId: 'a',
        platform: AppPlatform.windows,
        appIdentifier: 'com.a',
        developerName: 'Dev',
        developerIdentifier: 'CN=Dev',
        host: 'h',
      );
      final json = _roundTrip(input.toJson());
      expect(json, {
        'id': null,
        'appId': 'a',
        'platform': 'WINDOWS',
        'appIdentifier': 'com.a',
        'developerName': 'Dev',
        'developerIdentifier': 'CN=Dev',
        'host': 'h',
      });
      expect(AppInstanceInput.fromJson(json).toJson(), json);
    });

    test('decodes an unknown platform as web', () {
      expect(AppInstanceInput.fromJson({'appId': 'a', 'platform': 'TV'}).platform, AppPlatform.web);
    });
  });
}
