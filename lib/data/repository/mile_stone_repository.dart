import 'package:dagashi_flutter/model/mile_stone.dart';

abstract class MileStoneRepository {
  Future<void> refresh();

  Future<List<MileStone>> mileStones();
}
