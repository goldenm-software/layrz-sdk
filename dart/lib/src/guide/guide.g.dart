// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guide.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Guide _$GuideFromJson(Map<String, dynamic> json) => _Guide(
  thumbnail: json['thumbnail'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  youtubeUrl: json['youtubeUrl'] as String,
  publishedAt: const TimestampConverter().fromJson(json['publishedAt'] as num),
);

Map<String, dynamic> _$GuideToJson(_Guide instance) => <String, dynamic>{
  'thumbnail': instance.thumbnail,
  'title': instance.title,
  'description': instance.description,
  'youtubeUrl': instance.youtubeUrl,
  'publishedAt': const TimestampConverter().toJson(instance.publishedAt),
};
