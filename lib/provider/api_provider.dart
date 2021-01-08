import 'package:dagashi_flutter/data/api/app_dio.dart';
import 'package:dagashi_flutter/data/api/dagashi_api.dart';
import 'package:dagashi_flutter/data/api/impl/dagashi_api_impl.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/all.dart';

final dioProvider = Provider<Dio>((_) => AppDio.getInstance());

final dagashiApiProvider =
    Provider<DagashiApi>((ref) => DagashiApiImpl(dio: ref.read(dioProvider)));
