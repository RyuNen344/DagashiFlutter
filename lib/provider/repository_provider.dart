import 'package:dagashi_flutter/data/repository/impl/mile_stone_repository_impl.dart';
import 'package:dagashi_flutter/data/repository/mile_stone_repository.dart';
import 'package:dagashi_flutter/provider/api_provider.dart';
import 'package:hooks_riverpod/all.dart';

final mileStoneRepositoryProvider = Provider<MileStoneRepository>(
    (ref) => MileStoneRepositoryImpl(dagashiApi: ref.read(dagashiApiProvider)));
