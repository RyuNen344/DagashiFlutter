// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mile_stones_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MileStonesRootResponse _$_$_MileStonesRootResponseFromJson(
    Map<String, dynamic> json) {
  return _$_MileStonesRootResponse(
    name: json['name'] as String,
    url: json['url'] as String,
    milestones: json['milestones'] == null
        ? null
        : MileStonesResponse.fromJson(
            json['milestones'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_MileStonesRootResponseToJson(
        _$_MileStonesRootResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'milestones': instance.milestones,
    };

_$_MileStonesResponse _$_$_MileStonesResponseFromJson(
    Map<String, dynamic> json) {
  return _$_MileStonesResponse(
    totalCount: json['totalCount'] as int,
    nodes: (json['nodes'] as List)
        ?.map((e) => e == null
            ? null
            : MileStoneNodeResponse.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    pageInfo: json['pageInfo'] == null
        ? null
        : PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_MileStonesResponseToJson(
        _$_MileStonesResponse instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'nodes': instance.nodes,
      'pageInfo': instance.pageInfo,
    };

_$_MileStoneNodeResponse _$_$_MileStoneNodeResponseFromJson(
    Map<String, dynamic> json) {
  return _$_MileStoneNodeResponse(
    id: json['id'] as String,
    number: json['number'] as int,
    url: json['url'] as String,
    title: json['title'] as String,
    description: json['description'] as String,
    closedAt: json['closedAt'] == null
        ? null
        : DateTime.parse(json['closedAt'] as String),
    issues: json['issues'] == null
        ? null
        : MileStoneIssuesResponse.fromJson(
            json['issues'] as Map<String, dynamic>),
    path: json['path'] as String,
  );
}

Map<String, dynamic> _$_$_MileStoneNodeResponseToJson(
        _$_MileStoneNodeResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'url': instance.url,
      'title': instance.title,
      'description': instance.description,
      'closedAt': instance.closedAt?.toIso8601String(),
      'issues': instance.issues,
      'path': instance.path,
    };

_$_MileStoneIssuesResponse _$_$_MileStoneIssuesResponseFromJson(
    Map<String, dynamic> json) {
  return _$_MileStoneIssuesResponse(
    totalCount: json['totalCount'] as int,
    nodes: (json['nodes'] as List)
        ?.map((e) => e == null
            ? null
            : MileStoneIssueResponse.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_MileStoneIssuesResponseToJson(
        _$_MileStoneIssuesResponse instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'nodes': instance.nodes,
    };

_$_MileStoneIssueResponse _$_$_MileStoneIssueResponseFromJson(
    Map<String, dynamic> json) {
  return _$_MileStoneIssueResponse(
    title: json['title'] as String,
  );
}

Map<String, dynamic> _$_$_MileStoneIssueResponseToJson(
        _$_MileStoneIssueResponse instance) =>
    <String, dynamic>{
      'title': instance.title,
    };
