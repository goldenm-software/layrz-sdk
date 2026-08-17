import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  test('ParamDataMapConverter transforms keys and values', () {
    // Adapted from layrz_models param_test.dart — using ParamDataMapConverter directly
    // instead of ParameterUpdate.fromJson since that type is not migrated to layrz_sdk.
    // The test intent is to verify that parameter maps are correctly deserialized with
    // proper key translation (__  becomes .) and individual ParamData value handling.

    final parametersJson = {
      'battery__voltage': {'value': true, 'updatedAt': 1762471530000},
      'co2__reduction': {'value': true, 'updatedAt': 1762471530000},
      'custom__operation_total_tm': {'value': true, 'updatedAt': 1762471530000},
      'engine__ignition__status': {'value': true, 'updatedAt': 1762471530000},
      'fuel__level': {'value': true, 'updatedAt': 1762471530000},
      'position__speed': {'value': 7, 'updatedAt': 1762471790000},
      '0100__custom__accel_pos': {'value': 0, 'updatedAt': 1762471790000},
      '0100__custom__adf_reg_time': {'value': 1762471792, 'updatedAt': 1762471790000},
      '0100__custom__clutch_status': {'value': 0, 'updatedAt': 1762471790000},
      '0100__custom__cruise_status': {'value': 0, 'updatedAt': 1762471790000},
      '0100__custom__custom': {'value': 75, 'updatedAt': 1762471790000},
      '0100__custom__custom1': {'value': 20591, 'updatedAt': 1762471790000},
      '0100__custom__custom1_formatted': {'value': '20591.00', 'updatedAt': 1762471790000},
      '0100__custom__custom_formatted': {'value': '75.00', 'updatedAt': 1762471790000},
      '0100__custom__engine_braking': {'value': 0, 'updatedAt': 1762471790000},
      '0100__custom__engine_oil_press': {'value': 0, 'updatedAt': 1762471790000},
      '0100__custom__engine_tmp': {'value': 0, 'updatedAt': 1762471790000},
      '0100__custom__engine_torque': {'value': 0, 'updatedAt': 1762471790000},
      '0100__custom__event_number': {'value': 152, 'updatedAt': 1762471790000},
      '0100__custom__operation_total_tm': {'value': 20591, 'updatedAt': 1762471790000},
      '0100__custom__parking_brake_status': {'value': 0, 'updatedAt': 1762471790000},
      '0100__custom__protocol': {'value': 'NT', 'updatedAt': 1762471790000},
      '0100__custom__protocol_ident': {'value': 3, 'updatedAt': 1762471790000},
      '0100__custom__report': {'value': 'RUV03', 'updatedAt': 1762471790000},
      '0100__custom__rpm': {'value': 0, 'updatedAt': 1762471790000},
      '0100__custom__seq_num': {'value': 2000, 'updatedAt': 1762471790000},
      '0100__custom__service_brake_status': {'value': 0, 'updatedAt': 1762471790000},
      '0100__custom__speed': {'value': 1, 'updatedAt': 1762471790000},
      '0100__custom__total_fuel_cons': {'value': 0, 'updatedAt': 1762471790000},
      '0100__fuel__level': {'value': 75, 'updatedAt': 1762471790000},
      '0100__fuel__volume': {'value': 30, 'updatedAt': 1762471790000},
      '0100__peer': {'value': '64.120.108.13:34868', 'updatedAt': 1762471790000},
      '0100__trip__mileage': {'value': 0, 'updatedAt': 1762471790000},
      'position__altitude': {'value': 0, 'updatedAt': 1762471790000},
      'position__altitude__buffered': {'value': true, 'updatedAt': 1762471790000},
      'position__direction': {'value': 113, 'updatedAt': 1762471790000},
      'position__direction__buffered': {'value': true, 'updatedAt': 1762471790000},
      'position__hdop': {'value': 0, 'updatedAt': 1762471790000},
      'position__hdop__buffered': {'value': true, 'updatedAt': 1762471790000},
      'position__latitude': {'value': -23.48662, 'updatedAt': 1762471790000},
      'position__latitude__buffered': {'value': true, 'updatedAt': 1762471790000},
      'position__longitude': {'value': -46.49569, 'updatedAt': 1762471790000},
      'position__longitude__buffered': {'value': true, 'updatedAt': 1762471790000},
      'position__satellites': {'value': 4, 'updatedAt': 1762471790000},
      'position__satellites__buffered': {'value': true, 'updatedAt': 1762471790000},
      'position__speed__buffered': {'value': true, 'updatedAt': 1762471790000},
      '0100__battery__voltage': {'value': 4.23, 'updatedAt': 1762471770000},
      '0100__custom__connection_status': {'value': 1, 'updatedAt': 1762471770000},
      '0100__custom__driver_id': {'value': '00000', 'updatedAt': 1762471770000},
      '0100__custom__last_valid_pos': {'value': 0, 'updatedAt': 1762471770000},
      '0100__custom__network_band': {'value': '4G:0', 'updatedAt': 1762471770000},
      '0100__custom__overspeed_flag': {'value': 0, 'updatedAt': 1762471770000},
      '0100__custom__rpm_flag': {'value': 0, 'updatedAt': 1762471770000},
      '0100__din': {'value': 195, 'updatedAt': 1762471770000},
      '0100__engine__ignition__status': {'value': true, 'updatedAt': 1762471770000},
      '0100__engine__rpm': {'value': 0, 'updatedAt': 1762471770000},
      '0100__external__powersource__voltage': {'value': 11.59, 'updatedAt': 1762471770000},
      '0100__position__altitude': {'value': 0, 'updatedAt': 1762471770000},
      '0100__position__direction': {'value': 113, 'updatedAt': 1762471770000},
      '0100__position__hdop': {'value': 0, 'updatedAt': 1762471770000},
      '0100__position__latitude': {'value': -23.48662, 'updatedAt': 1762471770000},
      '0100__position__longitude': {'value': -46.49569, 'updatedAt': 1762471770000},
      '0100__position__satellites': {'value': 4, 'updatedAt': 1762471770000},
      '0100__position__speed': {'value': 7, 'updatedAt': 1762471770000},
    };

    final converter = const ParamDataMapConverter();
    final parameters = converter.fromJson(parametersJson);

    expect(parameters, isNotNull, reason: 'Converter should return a non-null map');
    expect(parameters!.length, 64, reason: 'Converter should deserialize all 64 parameter entries');

    // Verify key translation: __ becomes .
    expect(parameters.containsKey('battery.voltage'), true, reason: 'Key translation __ → . should work');
    expect(parameters.containsKey('0100.custom.accel_pos'), true, reason: 'Multiple __ separators should all be converted to .');
    expect(parameters.containsKey('position.speed'), true, reason: 'Position speed key should be present');

    // Verify ParamData deserialization
    final batteryParam = parameters['battery.voltage'];
    expect(batteryParam, isNotNull);
    expect(batteryParam!.value, true);
    expect(batteryParam.updatedAt, isNotNull);

    final customParam = parameters['0100.custom.custom'];
    expect(customParam, isNotNull);
    expect(customParam!.value, 75);

    // Verify roundtrip: serialize and deserialize should match
    final serialized = converter.toJson(parameters);
    expect(serialized, isNotNull, reason: 'Serialization should return a non-null map');
    expect(serialized!.length, 64);
    expect(serialized.containsKey('battery__voltage'), true, reason: 'Serialization should convert . back to __');
    expect(serialized.containsKey('0100__custom__accel_pos'), true, reason: 'Multiple dots should become __ on serialize');
  });
}
