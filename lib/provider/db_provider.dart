import 'package:dagashi_flutter/data/db/database_helper.dart';
import 'package:dagashi_flutter/data/db/impl/dagashi_database_impl.dart';
import 'package:dagashi_flutter/data/db/mile_stone_database.dart';
import 'package:hooks_riverpod/all.dart';

final dagashiDatabaseHelperProvider =
    Provider<DatabaseHelper>((ref) => DatabaseHelper.databaseHelper);

final mileStoneDatabaseProvider = Provider<MileStoneDatabase>((ref) =>
    DagashiDatabaseImpl(
        databaseHelper: ref.read(dagashiDatabaseHelperProvider)));
