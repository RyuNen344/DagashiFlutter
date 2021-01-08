import 'package:dagashi_flutter/data/api/response/issue_response.dart';
import 'package:dagashi_flutter/data/api/response/mile_stones_response.dart';
import 'package:flutter/material.dart';

abstract class DagashiApi {
  Future<MileStonesRootResponse> milestones({String previousEndCursor});

  Future<IssueRootResponse> issues({@required String path});
}
