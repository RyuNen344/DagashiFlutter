import 'package:dagashi_flutter/data/api/dagashi_api.dart';
import 'package:dagashi_flutter/data/api/response/mile_stones_response.dart';
import 'package:dagashi_flutter/data/db/entity/combined/mile_stone_with_summary_issue.dart';
import 'package:dagashi_flutter/data/db/mile_stone_database.dart';
import 'package:dagashi_flutter/data/repository/mapper/mile_stone_mapper.dart';
import 'package:dagashi_flutter/data/repository/mile_stone_repository.dart';
import 'package:dagashi_flutter/model/mile_stone.dart';
import 'package:flutter/material.dart';

class MileStoneRepositoryImpl implements MileStoneRepository {
  MileStoneRepositoryImpl(
      {@required DagashiApi dagashiApi,
      @required MileStoneDatabase mileStoneDatabase})
      : _dagashiApi = dagashiApi,
        _mileStoneDatabase = mileStoneDatabase;

  final DagashiApi _dagashiApi;

  final MileStoneDatabase _mileStoneDatabase;

  @override
  Future<void> refresh() async {
    bool hasNextPage = true;
    String previousEndCursor;
    Set<MileStoneWithSummaryIssue> result = Set();

    while (hasNextPage) {
      MileStonesRootResponse response;
      if (previousEndCursor == null) {
        response = await _dagashiApi.milestones();
      } else {
        response =
            await _dagashiApi.milestones(previousEndCursor: previousEndCursor);
      }
      hasNextPage = response.milestones.pageInfo.hasNextPage;
      previousEndCursor = response.milestones.pageInfo.endCursor;
      result.addAll(response.milestones.nodes
          .map((e) => MileStoneMapper.toEntity(e))
          .toSet());
    }
    await _mileStoneDatabase.saveMileStone(result.toList());
  }

  @override
  Stream<List<MileStone>> mileStones() {
    return _mileStoneDatabase
        .mileStoneEntity()
        .map((list) => list.map((e) => MileStoneMapper.toModel(e)).toList());
  }
}
