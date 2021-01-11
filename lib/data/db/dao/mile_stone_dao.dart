import 'package:dagashi_flutter/data/db/dao/base_dao.dart';
import 'package:dagashi_flutter/data/db/entity/mile_stone_entity.dart';
import 'package:dagashi_flutter/data/db/entity/summary_issue_entity.dart';
import 'package:floor/floor.dart';

@dao
abstract class MileStoneDao extends BaseDao<MileStoneEntity> {
  @Query('SELECT * FROM mile_stone ORDER BY number DESC')
  Stream<List<MileStoneEntity>> select();
}

@dao
abstract class SummaryIssueDao extends BaseDao<SummaryIssueEntity> {
  @Query('SELECT * FROM summary_issue')
  Stream<List<SummaryIssueEntity>> select();

  @Query('SELECT * FROM summary_issue WHERE mile_stone_id = :id')
  Future<List<SummaryIssueEntity>> selectById(int id);
}
