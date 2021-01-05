import 'package:dagashi_flutter/data/api/response/page_info.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mile_stones_response.freezed.dart';

part 'mile_stones_response.g.dart';

@freezed
abstract class MileStonesRootResponse with _$MileStonesRootResponse {
  factory MileStonesRootResponse(
      {@required String name,
      @required String url,
      @required MileStonesResponse milestones}) = _MileStonesRootResponse;

  factory MileStonesRootResponse.fromJson(Map<String, dynamic> json) =>
      _$MileStonesRootResponseFromJson(json);
}

@freezed
abstract class MileStonesResponse with _$MileStonesResponse {
  factory MileStonesResponse(
      {@required int totalCount,
      @required List<MileStoneNodeResponse> nodes,
      @required PageInfo pageInfo}) = _MileStonesResponse;

  factory MileStonesResponse.fromJson(Map<String, dynamic> json) =>
      _$MileStonesResponseFromJson(json);
}

@freezed
abstract class MileStoneNodeResponse with _$MileStoneNodeResponse {
  factory MileStoneNodeResponse(
      {@required String id,
      @required int number,
      @required String url,
      @required String title,
      @required String description,
      @required DateTime closedAt,
      @required MileStoneIssuesResponse issues,
      @required String path}) = _MileStoneNodeResponse;

  factory MileStoneNodeResponse.fromJson(Map<String, dynamic> json) =>
      _$MileStoneNodeResponseFromJson(json);
}

@freezed
abstract class MileStoneIssuesResponse with _$MileStoneIssuesResponse {
  factory MileStoneIssuesResponse(
      {@required int totalCount,
      List<MileStoneIssueResponse> nodes}) = _MileStoneIssuesResponse;

  factory MileStoneIssuesResponse.fromJson(Map<String, dynamic> json) =>
      _$MileStoneIssuesResponseFromJson(json);
}

@freezed
abstract class MileStoneIssueResponse with _$MileStoneIssueResponse {
  factory MileStoneIssueResponse({@required String title}) =
      _MileStoneIssueResponse;

  factory MileStoneIssueResponse.fromJson(Map<String, dynamic> json) =>
      _$MileStoneIssueResponseFromJson(json);
}
