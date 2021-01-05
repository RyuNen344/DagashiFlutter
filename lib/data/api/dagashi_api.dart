import 'package:dagashi_flutter/data/api/response/mile_stones_response.dart';

abstract class DagashiApi {
  Future<MileStonesRootResponse> milestones({String previousEndCursor});
}
