import 'package:dagashi_flutter/data/db/database_helper.dart';
import 'package:dagashi_flutter/data/db/impl/dagashi_database_impl.dart';
import 'package:dagashi_flutter/data/db/mile_stone_database.dart';
import 'package:hooks_riverpod/all.dart';

final dagashiDatabaseHelperProvider =
    Provider<DatabaseHelper>((ref) => DatabaseHelper.databaseHelper);

final dagashiDatabaseProvider = Provider<DagashiDatabaseImpl>((ref) =>
    DagashiDatabaseImpl(
        databaseHelper: ref.read(dagashiDatabaseHelperProvider)));

final mileStoneDatabaseProvider =
    Provider<MileStoneDatabase>((ref) => ref.read(dagashiDatabaseProvider));
