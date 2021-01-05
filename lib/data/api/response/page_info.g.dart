// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PageInfo _$_$_PageInfoFromJson(Map<String, dynamic> json) {
  return _$_PageInfo(
    startCursor: json['startCursor'] as String,
    endCursor: json['endCursor'] as String,
    hasPreviousPage: json['hasPreviousPage'] as bool,
    hasNextPage: json['hasNextPage'] as bool,
  );
}

Map<String, dynamic> _$_$_PageInfoToJson(_$_PageInfo instance) =>
    <String, dynamic>{
      'startCursor': instance.startCursor,
      'endCursor': instance.endCursor,
      'hasPreviousPage': instance.hasPreviousPage,
      'hasNextPage': instance.hasNextPage,
    };
