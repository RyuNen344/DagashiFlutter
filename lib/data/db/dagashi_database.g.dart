// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dagashi_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

class $FloorDagashiDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$DagashiDatabaseBuilder databaseBuilder(String name) =>
      _$DagashiDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$DagashiDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$DagashiDatabaseBuilder(null);
}

class _$DagashiDatabaseBuilder {
  _$DagashiDatabaseBuilder(this.name);

  final String name;

  final List<Migration> _migrations = [];

  Callback _callback;

  /// Adds migrations to the builder.
  _$DagashiDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$DagashiDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<DagashiDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name)
        : ':memory:';
    final database = _$DagashiDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$DagashiDatabase extends DagashiDatabase {
  _$DagashiDatabase([StreamController<String> listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  MileStoneDao _mileStoneDaoInstance;

  SummaryIssueDao _summaryIssueDaoInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback callback]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `mile_stone` (`id` TEXT NOT NULL, `number` INTEGER NOT NULL, `url` TEXT NOT NULL, `title` TEXT NOT NULL, `description` TEXT NOT NULL, `closedAt` TEXT NOT NULL, `path` TEXT NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `summary_issue` (`id` INTEGER NOT NULL, `mile_stone_id` TEXT NOT NULL, `title` TEXT NOT NULL, FOREIGN KEY (`mile_stone_id`) REFERENCES `mile_stone` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION, PRIMARY KEY (`id`, `mile_stone_id`))');
        await database.execute(
            'CREATE INDEX `index_summary_issue_id_mile_stone_id` ON `summary_issue` (`id`, `mile_stone_id`)');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  MileStoneDao get mileStoneDao {
    return _mileStoneDaoInstance ??= _$MileStoneDao(database, changeListener);
  }

  @override
  SummaryIssueDao get summaryIssueDao {
    return _summaryIssueDaoInstance ??=
        _$SummaryIssueDao(database, changeListener);
  }
}

class _$MileStoneDao extends MileStoneDao {
  _$MileStoneDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _mileStoneEntityInsertionAdapter = InsertionAdapter(
            database,
            'mile_stone',
            (MileStoneEntity item) => <String, dynamic>{
                  'id': item.id,
                  'number': item.number,
                  'url': item.url,
                  'title': item.title,
                  'description': item.description,
                  'closedAt': _dateTimeConverter.encode(item.closedAt),
                  'path': item.path
                },
            changeListener),
        _mileStoneEntityUpdateAdapter = UpdateAdapter(
            database,
            'mile_stone',
            ['id'],
            (MileStoneEntity item) => <String, dynamic>{
                  'id': item.id,
                  'number': item.number,
                  'url': item.url,
                  'title': item.title,
                  'description': item.description,
                  'closedAt': _dateTimeConverter.encode(item.closedAt),
                  'path': item.path
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<MileStoneEntity> _mileStoneEntityInsertionAdapter;

  final UpdateAdapter<MileStoneEntity> _mileStoneEntityUpdateAdapter;

  @override
  Stream<List<MileStoneEntity>> select() {
    return _queryAdapter.queryListStream(
        'SELECT * FROM mile_stone ORDER BY number DESC',
        queryableName: 'mile_stone',
        isView: false,
        mapper: (Map<String, dynamic> row) => MileStoneEntity(
            row['id'] as String,
            row['number'] as int,
            row['url'] as String,
            row['title'] as String,
            row['description'] as String,
            _dateTimeConverter.decode(row['closedAt'] as String),
            row['path'] as String));
  }

  @override
  Future<int> insert(MileStoneEntity object) {
    return _mileStoneEntityInsertionAdapter.insertAndReturnId(
        object, OnConflictStrategy.ignore);
  }

  @override
  Future<List<int>> insertList(List<MileStoneEntity> object) {
    return _mileStoneEntityInsertionAdapter.insertListAndReturnIds(
        object, OnConflictStrategy.ignore);
  }

  @override
  Future<void> update(MileStoneEntity object) async {
    await _mileStoneEntityUpdateAdapter.update(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<MileStoneEntity> object) async {
    await _mileStoneEntityUpdateAdapter.updateList(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(MileStoneEntity object) async {
    if (database is sqflite.Transaction) {
      await super.insertOrUpdate(object);
    } else {
      await (database as sqflite.Database)
          .transaction<void>((transaction) async {
        final transactionDatabase = _$DagashiDatabase(changeListener)
          ..database = transaction;
        await transactionDatabase.mileStoneDao.insertOrUpdate(object);
      });
    }
  }

  @override
  Future<void> insertOrUpdateList(List<MileStoneEntity> object) async {
    if (database is sqflite.Transaction) {
      await super.insertOrUpdateList(object);
    } else {
      await (database as sqflite.Database)
          .transaction<void>((transaction) async {
        final transactionDatabase = _$DagashiDatabase(changeListener)
          ..database = transaction;
        await transactionDatabase.mileStoneDao.insertOrUpdateList(object);
      });
    }
  }
}

class _$SummaryIssueDao extends SummaryIssueDao {
  _$SummaryIssueDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _summaryIssueEntityInsertionAdapter = InsertionAdapter(
            database,
            'summary_issue',
            (SummaryIssueEntity item) => <String, dynamic>{
                  'id': item.id,
                  'mile_stone_id': item.mileStoneId,
                  'title': item.title
                }),
        _summaryIssueEntityUpdateAdapter = UpdateAdapter(
            database,
            'summary_issue',
            ['id', 'mile_stone_id'],
            (SummaryIssueEntity item) => <String, dynamic>{
                  'id': item.id,
                  'mile_stone_id': item.mileStoneId,
                  'title': item.title
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<SummaryIssueEntity>
      _summaryIssueEntityInsertionAdapter;

  final UpdateAdapter<SummaryIssueEntity> _summaryIssueEntityUpdateAdapter;

  @override
  Future<List<SummaryIssueEntity>> select() async {
    return _queryAdapter.queryList('SELECT * FROM summary_issue',
        mapper: (Map<String, dynamic> row) => SummaryIssueEntity(
            row['id'] as int,
            row['mile_stone_id'] as String,
            row['title'] as String));
  }

  @override
  Future<List<SummaryIssueEntity>> selectById(int id) async {
    return _queryAdapter.queryList(
        'SELECT * FROM summary_issue WHERE mile_stone_id = ?',
        arguments: <dynamic>[id],
        mapper: (Map<String, dynamic> row) => SummaryIssueEntity(
            row['id'] as int,
            row['mile_stone_id'] as String,
            row['title'] as String));
  }

  @override
  Future<int> insert(SummaryIssueEntity object) {
    return _summaryIssueEntityInsertionAdapter.insertAndReturnId(
        object, OnConflictStrategy.ignore);
  }

  @override
  Future<List<int>> insertList(List<SummaryIssueEntity> object) {
    return _summaryIssueEntityInsertionAdapter.insertListAndReturnIds(
        object, OnConflictStrategy.ignore);
  }

  @override
  Future<void> update(SummaryIssueEntity object) async {
    await _summaryIssueEntityUpdateAdapter.update(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<SummaryIssueEntity> object) async {
    await _summaryIssueEntityUpdateAdapter.updateList(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(SummaryIssueEntity object) async {
    if (database is sqflite.Transaction) {
      await super.insertOrUpdate(object);
    } else {
      await (database as sqflite.Database)
          .transaction<void>((transaction) async {
        final transactionDatabase = _$DagashiDatabase(changeListener)
          ..database = transaction;
        await transactionDatabase.summaryIssueDao.insertOrUpdate(object);
      });
    }
  }

  @override
  Future<void> insertOrUpdateList(List<SummaryIssueEntity> object) async {
    if (database is sqflite.Transaction) {
      await super.insertOrUpdateList(object);
    } else {
      await (database as sqflite.Database)
          .transaction<void>((transaction) async {
        final transactionDatabase = _$DagashiDatabase(changeListener)
          ..database = transaction;
        await transactionDatabase.summaryIssueDao.insertOrUpdateList(object);
      });
    }
  }
}

// ignore_for_file: unused_element
final _dateTimeConverter = DateTimeConverter();
