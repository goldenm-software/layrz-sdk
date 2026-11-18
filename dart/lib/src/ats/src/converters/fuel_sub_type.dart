part of '../../ats.dart';

class AtsFuelSubTypeOrNullConverter
    implements JsonConverter<AtsFuelSubType?, String?> {
  const AtsFuelSubTypeOrNullConverter();

  @override
  AtsFuelSubType? fromJson(String? json) {
    if (json == null) {
      return null;
    }
    return AtsFuelSubType.fromJson(json);
  }

  @override
  String? toJson(AtsFuelSubType? object) {
    return object?.toJson();
  }
}

/// Reads a stock family label (`S10`, `S500`) into an [AtsFuelSubType]; see [AtsFuelSubType.fromStock].
class AtsFuelSubTypeStockConverter
    implements JsonConverter<AtsFuelSubType?, String?> {
  const AtsFuelSubTypeStockConverter();

  @override
  AtsFuelSubType? fromJson(String? json) {
    if (json == null) {
      return null;
    }
    return AtsFuelSubType.fromStock(json);
  }

  @override
  String? toJson(AtsFuelSubType? object) {
    return object?.toStock();
  }
}
