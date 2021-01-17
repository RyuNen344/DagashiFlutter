import 'package:dagashi_flutter/data/api/response/mile_stones_response.dart';
import 'package:dagashi_flutter/data/db/entity/combined/mile_stone_with_summary_issue.dart';
import 'package:dagashi_flutter/data/db/entity/mile_stone_entity.dart';
import 'package:dagashi_flutter/data/db/entity/summary_issue_entity.dart';
import 'package:dagashi_flutter/model/mile_stone.dart';
import 'package:dagashi_flutter/model/summary_issue.dart';

class MileStoneMapper {
  static MileStoneWithSummaryIssue toEntity(MileStoneNodeResponse response) {
    return MileStoneWithSummaryIssue(
        MileStoneEntity(
            response.id,
            response.number,
            response.url,
            response.title,
            response.description,
            response.closedAt,
            response.path),
        response.issues.nodes.asMap().keys.toList().map((index) {
          return _SummaryIssueMapper.toEntity(
              index, response.id, response.issues.nodes[index]);
        }).toList());
  }

  static MileStone toModel(MileStoneWithSummaryIssue entity) {
    return MileStone(
        id: entity.mileStoneEntity.id,
        number: entity.mileStoneEntity.number,
        url: entity.mileStoneEntity.url,
        title: entity.mileStoneEntity.title,
        description: entity.mileStoneEntity.description,
        closedAt: entity.mileStoneEntity.closedAt,
        issues: entity.issues
            .map((node) => _SummaryIssueMapper.toModel(node))
            .toList(),
        path: entity.mileStoneEntity.path);
  }
}

class _SummaryIssueMapper {
  static SummaryIssueEntity toEntity(
      int id, String mileStoneId, MileStoneIssueResponse response) {
    return SummaryIssueEntity(id, mileStoneId, response.title);
  }

  static SummaryIssue toModel(SummaryIssueEntity entity) {
    return SummaryIssue(title: entity.title);
  }
}
