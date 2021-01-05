import 'package:dagashi_flutter/data/api/response/page_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'issue_response.freezed.dart';

part 'issue_response.g.dart';

@freezed
abstract class IssueRootResponse with _$IssueRootResponse {
  factory IssueRootResponse(
      {@required String id,
      @required int number,
      @required String url,
      @required String title,
      @required String description,
      @required DateTime closedAt,
      @required IssuesResponse issues}) = _IssueRootResponse;

  factory IssueRootResponse.fromJson(Map<String, dynamic> json) =>
      _$IssueRootResponseFromJson(json);
}

@freezed
abstract class IssuesResponse with _$IssuesResponse {
  factory IssuesResponse(
      {@required int totalCount,
      @required PageInfo pageInfo,
      @required List<IssueNodeResponse> nodes}) = _IssuesResponse;

  factory IssuesResponse.fromJson(Map<String, dynamic> json) =>
      _$IssuesResponseFromJson(json);
}

@freezed
abstract class IssueNodeResponse with _$IssueNodeResponse {
  factory IssueNodeResponse(
      {@required String url,
      @required String title,
      @required String body,
      @required LabelsResponse labels,
      @required CommentsResponse comments}) = _IssueNodeResponse;

  factory IssueNodeResponse.fromJson(Map<String, dynamic> json) =>
      _$IssueNodeResponseFromJson(json);
}

@freezed
abstract class LabelsResponse with _$LabelsResponse {
  factory LabelsResponse({@required List<LabelNodeResponse> nodes}) =
      _LabelsResponse;

  factory LabelsResponse.fromJson(Map<String, dynamic> json) =>
      _$LabelsResponseFromJson(json);
}

@freezed
abstract class LabelNodeResponse with _$LabelNodeResponse {
  factory LabelNodeResponse(
      {@required String name,
      @required String description,
      @required String color}) = _LabelNodeResponse;

  factory LabelNodeResponse.fromJson(Map<String, dynamic> json) =>
      _$LabelNodeResponseFromJson(json);
}

@freezed
abstract class CommentsResponse with _$CommentsResponse {
  factory CommentsResponse(
      {@required int totalCount,
      @required PageInfo pageInfo,
      @required List<CommentNodeResponse> nodes}) = _CommentsResponse;

  factory CommentsResponse.fromJson(Map<String, dynamic> json) =>
      _$CommentsResponseFromJson(json);
}

@freezed
abstract class CommentNodeResponse with _$CommentNodeResponse {
  factory CommentNodeResponse(
      {@required String body,
      @required DateTime publishedAt,
      @required AuthorResponse author}) = _CommentNodeResponse;

  factory CommentNodeResponse.fromJson(Map<String, dynamic> json) =>
      _$CommentNodeResponseFromJson(json);
}

@freezed
abstract class AuthorResponse with _$AuthorResponse {
  factory AuthorResponse(
      {@required String login,
      @required String url,
      @required String avatarUrl}) = _AuthorResponse;

  factory AuthorResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthorResponseFromJson(json);
}
