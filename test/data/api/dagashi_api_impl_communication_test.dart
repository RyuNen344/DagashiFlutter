import 'package:dagashi_flutter/data/api/app_dio.dart';
import 'package:dagashi_flutter/data/api/dagashi_api.dart';
import 'package:dagashi_flutter/data/api/impl/dagashi_api_impl.dart';
import 'package:dagashi_flutter/data/api/response/mile_stones_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("DagashiApiImpl Communication Test", () {
    // TestWidgetsFlutterBindingではFuture周りで落ちる
    WidgetsFlutterBinding.ensureInitialized();
    MethodChannel('ua_client_hints')
        .setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == 'getInfo') {
        return const <String, dynamic>{'platform': 'dart vm', 'mobile': false};
      }
      return null;
    });

    Dio _dio = AppDio.getInstance();
    DagashiApi _dagashiApi = DagashiApiImpl(dio: _dio);

    test('MileStones Index', () async {
      await _dagashiApi.milestones();
    });

    test('MileStones PreviousEndCursor', () async {
      MileStonesRootResponse result = await _dagashiApi.milestones();
      await _dagashiApi.milestones(
          previousEndCursor: result.milestones.pageInfo.endCursor);
    });

    test('Issue', () async {
      MileStonesRootResponse result = await _dagashiApi.milestones();
      await _dagashiApi.issues(path: result.milestones.nodes.first.path);
    });
  });
}
