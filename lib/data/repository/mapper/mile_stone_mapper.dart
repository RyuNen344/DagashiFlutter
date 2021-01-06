import 'package:dagashi_flutter/data/api/response/mile_stones_response.dart';
import 'package:dagashi_flutter/model/mile_stone.dart';
import 'package:dagashi_flutter/model/summary_issue.dart';

class MileStoneMapper {
  static MileStone toModel(MileStoneNodeResponse response) {
    return MileStone(
        id: response.id,
        number: response.number,
        url: response.url,
        title: response.title,
        description: response.description,
        closedAt: response.closedAt,
        issues: response.issues.nodes
            .map((node) => _SummaryIssueMapper.toModel(node)),
        path: response.path);
  }
}

class _SummaryIssueMapper {
  static SummaryIssue toModel(MileStoneIssueResponse response) {
    return SummaryIssue(title: response.title);
  }
}
