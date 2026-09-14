import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('Country Tests', () {
    test('constructs with required fields', () {
      final country = Country(id: 'MX', commonName: 'Mexico', flagEmoji: '🇲🇽');

      expect(country.id, 'MX');
      expect(country.commonName, 'Mexico');
      expect(country.flagEmoji, '🇲🇽');
      expect(country.phoneCode, isNull);
      expect(country.code, isNull);
    });

    test('fromJson/toJson roundtrip', () {
      final json = {
        'id': 'US',
        'commonName': 'United States',
        'flagEmoji': '🇺🇸',
        'phoneCode': '+1',
        'code': 'US',
      };

      final country = Country.fromJson(json);
      expect(country.id, 'US');
      expect(country.commonName, 'United States');
      expect(country.phoneCode, '+1');
      expect(country.code, 'US');

      final restored = country.toJson();
      expect(restored['id'], 'US');
      expect(restored['commonName'], 'United States');
      expect(restored['phoneCode'], '+1');
    });

    test('copyWith updates fields', () {
      final country = Country(id: 'a', commonName: 'A', flagEmoji: '🏳️');
      final updated = country.copyWith(commonName: 'B');

      expect(updated.id, 'a');
      expect(updated.commonName, 'B');
    });

    test('equality', () {
      final a = Country(id: 'x', commonName: 'X', flagEmoji: '🏳️');
      final b = Country(id: 'x', commonName: 'X', flagEmoji: '🏳️');
      final c = Country(id: 'y', commonName: 'Y', flagEmoji: '🏳️');

      expect(a, b);
      expect(a, isNot(c));
    });

    test('fragment is well-formed', () {
      final fragment = Country.fragment;
      expect(fragment.name, 'countryFragment');
      expect(fragment.onType, 'Country');
    });
  });
}
