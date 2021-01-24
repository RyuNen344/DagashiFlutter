import 'package:dagashi_flutter/data/repository/impl/issue_repository_impl.dart';
import 'package:dagashi_flutter/data/repository/impl/mile_stone_repository_impl.dart';
import 'package:dagashi_flutter/data/repository/issue_repository.dart';
import 'package:dagashi_flutter/data/repository/mile_stone_repository.dart';
import 'package:dagashi_flutter/provider/api_provider.dart';
import 'package:dagashi_flutter/provider/db_provider.dart';
import 'package:hooks_riverpod/all.dart';

final mileStoneRepositoryProvider = Provider<MileStoneRepository>((ref) =>
    MileStoneRepositoryImpl(
        dagashiApi: ref.read(dagashiApiProvider),
        mileStoneDatabase: ref.read(mileStoneDatabaseProvider)));

final issueRepositoryProvider = Provider<IssueRepository>((ref) =>
    IssueRepositoryImpl(
        dagashiApi: ref.read(dagashiApiProvider),
        issueDatabase: ref.read(issueDatabaseProvider)));
