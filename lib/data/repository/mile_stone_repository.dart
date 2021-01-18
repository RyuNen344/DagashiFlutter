import 'package:dagashi_flutter/model/mile_stone.dart';

abstract class MileStoneRepository {
  Future<void> refresh();

  Stream<List<MileStone>> mileStones();
}
