import 'package:freezed_annotation/freezed_annotation.dart';

part 'summary_issue.freezed.dart';

@freezed
abstract class SummaryIssue with _$SummaryIssue {
  factory SummaryIssue({@required String title}) = _SummaryIssue;
}
