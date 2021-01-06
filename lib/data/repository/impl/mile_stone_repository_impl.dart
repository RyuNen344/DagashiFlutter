import 'package:dagashi_flutter/data/api/dagashi_api.dart';
import 'package:dagashi_flutter/data/api/response/mile_stones_response.dart';
import 'package:dagashi_flutter/data/repository/mapper/mile_stone_mapper.dart';
import 'package:dagashi_flutter/data/repository/mile_stone_repository.dart';
import 'package:dagashi_flutter/model/mile_stone.dart';
import 'package:flutter/cupertino.dart';

class MileStoneRepositoryImpl implements MileStoneRepository {
  MileStoneRepositoryImpl({@required DagashiApi dagashiApi})
      : _dagashiApi = dagashiApi;

  final DagashiApi _dagashiApi;

  @override
  Future<void> refresh() async {
    await _dagashiApi.milestones();
  }

  @override
  Future<List<MileStone>> mileStones() async {
    MileStonesRootResponse response = await _dagashiApi.milestones();
    return response.milestones.nodes.map((e) => MileStoneMapper.toModel(e));
  }
}
