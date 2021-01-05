// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issue_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IssueRootResponse _$_$_IssueRootResponseFromJson(Map<String, dynamic> json) {
  return _$_IssueRootResponse(
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
        : IssuesResponse.fromJson(json['issues'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_IssueRootResponseToJson(
        _$_IssueRootResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'url': instance.url,
      'title': instance.title,
      'description': instance.description,
      'closedAt': instance.closedAt?.toIso8601String(),
      'issues': instance.issues,
    };

_$_IssuesResponse _$_$_IssuesResponseFromJson(Map<String, dynamic> json) {
  return _$_IssuesResponse(
    totalCount: json['totalCount'] as int,
    pageInfo: json['pageInfo'] == null
        ? null
        : PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
    nodes: (json['nodes'] as List)
        ?.map((e) => e == null
            ? null
            : IssueNodeResponse.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_IssuesResponseToJson(_$_IssuesResponse instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageInfo': instance.pageInfo,
      'nodes': instance.nodes,
    };

_$_IssueNodeResponse _$_$_IssueNodeResponseFromJson(Map<String, dynamic> json) {
  return _$_IssueNodeResponse(
    url: json['url'] as String,
    title: json['title'] as String,
    body: json['body'] as String,
    labels: json['labels'] == null
        ? null
        : LabelsResponse.fromJson(json['labels'] as Map<String, dynamic>),
    comments: json['comments'] == null
        ? null
        : CommentsResponse.fromJson(json['comments'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_IssueNodeResponseToJson(
        _$_IssueNodeResponse instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
      'body': instance.body,
      'labels': instance.labels,
      'comments': instance.comments,
    };

_$_LabelsResponse _$_$_LabelsResponseFromJson(Map<String, dynamic> json) {
  return _$_LabelsResponse(
    nodes: (json['nodes'] as List)
        ?.map((e) => e == null
            ? null
            : LabelNodeResponse.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_LabelsResponseToJson(_$_LabelsResponse instance) =>
    <String, dynamic>{
      'nodes': instance.nodes,
    };

_$_LabelNodeResponse _$_$_LabelNodeResponseFromJson(Map<String, dynamic> json) {
  return _$_LabelNodeResponse(
    name: json['name'] as String,
    description: json['description'] as String,
    color: json['color'] as String,
  );
}

Map<String, dynamic> _$_$_LabelNodeResponseToJson(
        _$_LabelNodeResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'color': instance.color,
    };

_$_CommentsResponse _$_$_CommentsResponseFromJson(Map<String, dynamic> json) {
  return _$_CommentsResponse(
    totalCount: json['totalCount'] as int,
    pageInfo: json['pageInfo'] == null
        ? null
        : PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
    nodes: (json['nodes'] as List)
        ?.map((e) => e == null
            ? null
            : CommentNodeResponse.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_CommentsResponseToJson(
        _$_CommentsResponse instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageInfo': instance.pageInfo,
      'nodes': instance.nodes,
    };

_$_CommentNodeResponse _$_$_CommentNodeResponseFromJson(
    Map<String, dynamic> json) {
  return _$_CommentNodeResponse(
    body: json['body'] as String,
    publishedAt: json['publishedAt'] == null
        ? null
        : DateTime.parse(json['publishedAt'] as String),
    author: json['author'] == null
        ? null
        : AuthorResponse.fromJson(json['author'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CommentNodeResponseToJson(
        _$_CommentNodeResponse instance) =>
    <String, dynamic>{
      'body': instance.body,
      'publishedAt': instance.publishedAt?.toIso8601String(),
      'author': instance.author,
    };

_$_AuthorResponse _$_$_AuthorResponseFromJson(Map<String, dynamic> json) {
  return _$_AuthorResponse(
    login: json['login'] as String,
    url: json['url'] as String,
    avatarUrl: json['avatarUrl'] as String,
  );
}

Map<String, dynamic> _$_$_AuthorResponseToJson(_$_AuthorResponse instance) =>
    <String, dynamic>{
      'login': instance.login,
      'url': instance.url,
      'avatarUrl': instance.avatarUrl,
    };
