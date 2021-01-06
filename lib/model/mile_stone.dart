import 'package:dagashi_flutter/model/summary_issue.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mile_stone.freezed.dart';

@freezed
abstract class MileStone with _$MileStone {
  factory MileStone(
      {@required String id,
      @required int number,
      @required String url,
      @required String title,
      @required String description,
      @required DateTime closedAt,
      @required List<SummaryIssue> issues,
      @required String path}) = _MileStone;
}
