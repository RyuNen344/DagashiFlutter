import 'package:dagashi_flutter/data/api/dagashi_api.dart';
import 'package:dagashi_flutter/data/api/response/mile_stones_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DagashiApiImpl implements DagashiApi {
  DagashiApiImpl({@required Dio dio}) : _dio = dio;

  final Dio _dio;

  @override
  Future<MileStonesRootResponse> milestones({String previousEndCursor}) {
    String path = previousEndCursor == null
        ? '/api/index.json'
        : '/api/$previousEndCursor.json';

    return _dio
        .get(path)
        .then((response) => MileStonesRootResponse.fromJson(response.data));
  }
}
