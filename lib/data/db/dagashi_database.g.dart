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
      _callback
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

  IssueDao _issueDaoInstance;

  IssueLabelCrossRefDao _issueLabelCrossRefDaoInstance;

  CommentAuthorCrossRefDao _commentAuthorCrossRefDaoInstance;

  AuthorDao _authorDaoInstance;

  CommentDao _commentDaoInstance;

  LabelDao _labelDaoInstance;

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
            'CREATE TABLE IF NOT EXISTS `mile_stone` (`id` TEXT NOT NULL, `number` INTEGER NOT NULL, `url` TEXT NOT NULL, `title` TEXT NOT NULL, `description` TEXT NOT NULL, `closed_at` TEXT NOT NULL, `path` TEXT NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `summary_issue` (`id` INTEGER NOT NULL, `mile_stone_id` TEXT NOT NULL, `title` TEXT NOT NULL, FOREIGN KEY (`mile_stone_id`) REFERENCES `mile_stone` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION, PRIMARY KEY (`id`, `mile_stone_id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `issue` (`single_unique_id` TEXT NOT NULL, `id` INTEGER NOT NULL, `number` INTEGER NOT NULL, `url` TEXT NOT NULL, `title` TEXT NOT NULL, `body` TEXT NOT NULL, PRIMARY KEY (`single_unique_id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `label` (`name` TEXT NOT NULL, `description` TEXT NOT NULL, `color` TEXT NOT NULL, PRIMARY KEY (`name`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `comment` (`id` INTEGER NOT NULL, `single_unique_id` TEXT NOT NULL, `body` TEXT NOT NULL, `published_at` TEXT NOT NULL, FOREIGN KEY (`single_unique_id`) REFERENCES `issue` (`single_unique_id`) ON UPDATE NO ACTION ON DELETE CASCADE, PRIMARY KEY (`id`, `single_unique_id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `author` (`login` TEXT NOT NULL, `url` TEXT NOT NULL, `avatar_url` TEXT NOT NULL, PRIMARY KEY (`login`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `issue_label_cross_ref` (`single_unique_id` TEXT NOT NULL, `label_name` TEXT NOT NULL, FOREIGN KEY (`single_unique_id`) REFERENCES `issue` (`single_unique_id`) ON UPDATE NO ACTION ON DELETE CASCADE, FOREIGN KEY (`label_name`) REFERENCES `label` (`name`) ON UPDATE NO ACTION ON DELETE CASCADE, PRIMARY KEY (`single_unique_id`, `label_name`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `comment_author_cross_ref` (`id` INTEGER NOT NULL, `single_unique_id` TEXT NOT NULL, `login` TEXT NOT NULL, FOREIGN KEY (`id`) REFERENCES `comment` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE, FOREIGN KEY (`single_unique_id`) REFERENCES `comment` (`single_unique_id`) ON UPDATE NO ACTION ON DELETE CASCADE, FOREIGN KEY (`login`) REFERENCES `author` (`login`) ON UPDATE NO ACTION ON DELETE CASCADE, PRIMARY KEY (`id`, `single_unique_id`, `login`))');
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

  @override
  IssueDao get issueDao {
    return _issueDaoInstance ??= _$IssueDao(database, changeListener);
  }

  @override
  IssueLabelCrossRefDao get issueLabelCrossRefDao {
    return _issueLabelCrossRefDaoInstance ??=
        _$IssueLabelCrossRefDao(database, changeListener);
  }

  @override
  CommentAuthorCrossRefDao get commentAuthorCrossRefDao {
    return _commentAuthorCrossRefDaoInstance ??=
        _$CommentAuthorCrossRefDao(database, changeListener);
  }

  @override
  AuthorDao get authorDao {
    return _authorDaoInstance ??= _$AuthorDao(database, changeListener);
  }

  @override
  CommentDao get commentDao {
    return _commentDaoInstance ??= _$CommentDao(database, changeListener);
  }

  @override
  LabelDao get labelDao {
    return _labelDaoInstance ??= _$LabelDao(database, changeListener);
  }

  @override
  Future<void> runOnTransaction(Function(_$DagashiDatabase) daoExecution) async {
    if (database is sqflite.Transaction) {
      daoExecution(this);
    } else {
      await (database as sqflite.Database).transaction<void>((transaction) async {
        final transactionDatabase = _$DagashiDatabase(changeListener)
          ..database = transaction;
        daoExecution(transactionDatabase);
      });
    }
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
                  'closed_at': _dateTimeConverter.encode(item.closedAt),
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
                  'closed_at': _dateTimeConverter.encode(item.closedAt),
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
            _dateTimeConverter.decode(row['closed_at'] as String),
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

class _$IssueDao extends IssueDao {
  _$IssueDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _issueEntityInsertionAdapter = InsertionAdapter(
            database,
            'issue',
            (IssueEntity item) => <String, dynamic>{
                  'single_unique_id': item.singleUniqueId,
                  'id': item.id,
                  'number': item.number,
                  'url': item.url,
                  'title': item.title,
                  'body': item.body
                },
            changeListener),
        _issueEntityUpdateAdapter = UpdateAdapter(
            database,
            'issue',
            ['single_unique_id'],
            (IssueEntity item) => <String, dynamic>{
                  'single_unique_id': item.singleUniqueId,
                  'id': item.id,
                  'number': item.number,
                  'url': item.url,
                  'title': item.title,
                  'body': item.body
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<IssueEntity> _issueEntityInsertionAdapter;

  final UpdateAdapter<IssueEntity> _issueEntityUpdateAdapter;

  @override
  Stream<List<IssueEntity>> select(int number) {
    return _queryAdapter.queryListStream(
        'SELECT * FROM issue WHERE number = ? ORDER BY id ASC',
        arguments: <dynamic>[number],
        queryableName: 'issue',
        isView: false,
        mapper: (Map<String, dynamic> row) => IssueEntity(
            row['single_unique_id'] as String,
            row['id'] as int,
            row['number'] as int,
            row['url'] as String,
            row['title'] as String,
            row['body'] as String));
  }

  @override
  Future<int> insert(IssueEntity object) {
    return _issueEntityInsertionAdapter.insertAndReturnId(
        object, OnConflictStrategy.ignore);
  }

  @override
  Future<List<int>> insertList(List<IssueEntity> object) {
    return _issueEntityInsertionAdapter.insertListAndReturnIds(
        object, OnConflictStrategy.ignore);
  }

  @override
  Future<void> update(IssueEntity object) async {
    await _issueEntityUpdateAdapter.update(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<IssueEntity> object) async {
    await _issueEntityUpdateAdapter.updateList(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(IssueEntity object) async {
    if (database is sqflite.Transaction) {
      await super.insertOrUpdate(object);
    } else {
      await (database as sqflite.Database)
          .transaction<void>((transaction) async {
        final transactionDatabase = _$DagashiDatabase(changeListener)
          ..database = transaction;
        await transactionDatabase.issueDao.insertOrUpdate(object);
      });
    }
  }

  @override
  Future<void> insertOrUpdateList(List<IssueEntity> object) async {
    if (database is sqflite.Transaction) {
      await super.insertOrUpdateList(object);
    } else {
      await (database as sqflite.Database)
          .transaction<void>((transaction) async {
        final transactionDatabase = _$DagashiDatabase(changeListener)
          ..database = transaction;
        await transactionDatabase.issueDao.insertOrUpdateList(object);
      });
    }
  }
}

class _$IssueLabelCrossRefDao extends IssueLabelCrossRefDao {
  _$IssueLabelCrossRefDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _issueLabelCrossRefInsertionAdapter = InsertionAdapter(
            database,
            'issue_label_cross_ref',
            (IssueLabelCrossRef item) => <String, dynamic>{
                  'single_unique_id': item.singleUniqueId,
                  'label_name': item.labelName
                }),
        _issueLabelCrossRefUpdateAdapter = UpdateAdapter(
            database,
            'issue_label_cross_ref',
            ['single_unique_id', 'label_name'],
            (IssueLabelCrossRef item) => <String, dynamic>{
                  'single_unique_id': item.singleUniqueId,
                  'label_name': item.labelName
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<IssueLabelCrossRef>
      _issueLabelCrossRefInsertionAdapter;

  final UpdateAdapter<IssueLabelCrossRef> _issueLabelCrossRefUpdateAdapter;

  @override
  Future<List<IssueLabelCrossRef>> select(String singleUniqueId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM issue_label_cross_ref WHERE single_unique_id = ?',
        arguments: <dynamic>[singleUniqueId],
        mapper: (Map<String, dynamic> row) => IssueLabelCrossRef(
            row['single_unique_id'] as String, row['label_name'] as String));
  }

  @override
  Future<int> insert(IssueLabelCrossRef object) {
    return _issueLabelCrossRefInsertionAdapter.insertAndReturnId(
        object, OnConflictStrategy.ignore);
  }

  @override
  Future<List<int>> insertList(List<IssueLabelCrossRef> object) {
    return _issueLabelCrossRefInsertionAdapter.insertListAndReturnIds(
        object, OnConflictStrategy.ignore);
  }

  @override
  Future<void> update(IssueLabelCrossRef object) async {
    await _issueLabelCrossRefUpdateAdapter.update(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<IssueLabelCrossRef> object) async {
    await _issueLabelCrossRefUpdateAdapter.updateList(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(IssueLabelCrossRef object) async {
    if (database is sqflite.Transaction) {
      await super.insertOrUpdate(object);
    } else {
      await (database as sqflite.Database)
          .transaction<void>((transaction) async {
        final transactionDatabase = _$DagashiDatabase(changeListener)
          ..database = transaction;
        await transactionDatabase.issueLabelCrossRefDao.insertOrUpdate(object);
      });
    }
  }

  @override
  Future<void> insertOrUpdateList(List<IssueLabelCrossRef> object) async {
    if (database is sqflite.Transaction) {
      await super.insertOrUpdateList(object);
    } else {
      await (database as sqflite.Database)
          .transaction<void>((transaction) async {
        final transactionDatabase = _$DagashiDatabase(changeListener)
          ..database = transaction;
        await transactionDatabase.issueLabelCrossRefDao
            .insertOrUpdateList(object);
      });
    }
  }
}

class _$CommentAuthorCrossRefDao extends CommentAuthorCrossRefDao {
  _$CommentAuthorCrossRefDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _commentAuthorCrossRefInsertionAdapter = InsertionAdapter(
            database,
            'comment_author_cross_ref',
            (CommentAuthorCrossRef item) => <String, dynamic>{
                  'id': item.id,
                  'single_unique_id': item.singleUniqueId,
                  'login': item.login
                }),
        _commentAuthorCrossRefUpdateAdapter = UpdateAdapter(
            database,
            'comment_author_cross_ref',
            ['id', 'single_unique_id', 'login'],
            (CommentAuthorCrossRef item) => <String, dynamic>{
                  'id': item.id,
                  'single_unique_id': item.singleUniqueId,
                  'login': item.login
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<CommentAuthorCrossRef>
      _commentAuthorCrossRefInsertionAdapter;

  final UpdateAdapter<CommentAuthorCrossRef>
      _commentAuthorCrossRefUpdateAdapter;

  @override
  Future<CommentAuthorCrossRef> select(int id, String singleUniqueId) async {
    return _queryAdapter.query(
        'SELECT * FROM comment_author_cross_ref WHERE id = ? AND single_unique_id = ?',
        arguments: <dynamic>[id, singleUniqueId],
        mapper: (Map<String, dynamic> row) => CommentAuthorCrossRef(
            row['id'] as int,
            row['single_unique_id'] as String,
            row['login'] as String));
  }

  @override
  Future<int> insert(CommentAuthorCrossRef object) {
    return _commentAuthorCrossRefInsertionAdapter.insertAndReturnId(
        object, OnConflictStrategy.ignore);
  }

  @override
  Future<List<int>> insertList(List<CommentAuthorCrossRef> object) {
    return _commentAuthorCrossRefInsertionAdapter.insertListAndReturnIds(
        object, OnConflictStrategy.ignore);
  }

  @override
  Future<void> update(CommentAuthorCrossRef object) async {
    await _commentAuthorCrossRefUpdateAdapter.update(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<CommentAuthorCrossRef> object) async {
    await _commentAuthorCrossRefUpdateAdapter.updateList(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(CommentAuthorCrossRef object) async {
    if (database is sqflite.Transaction) {
      await super.insertOrUpdate(object);
    } else {
      await (database as sqflite.Database)
          .transaction<void>((transaction) async {
        final transactionDatabase = _$DagashiDatabase(changeListener)
          ..database = transaction;
        await transactionDatabase.commentAuthorCrossRefDao
            .insertOrUpdate(object);
      });
    }
  }

  @override
  Future<void> insertOrUpdateList(List<CommentAuthorCrossRef> object) async {
    if (database is sqflite.Transaction) {
      await super.insertOrUpdateList(object);
    } else {
      await (database as sqflite.Database)
          .transaction<void>((transaction) async {
        final transactionDatabase = _$DagashiDatabase(changeListener)
          ..database = transaction;
        await transactionDatabase.commentAuthorCrossRefDao
            .insertOrUpdateList(object);
      });
    }
  }
}

class _$AuthorDao extends AuthorDao {
  _$AuthorDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _authorEntityInsertionAdapter = InsertionAdapter(
            database,
            'author',
            (AuthorEntity item) => <String, dynamic>{
                  'login': item.login,
                  'url': item.url,
                  'avatar_url': item.avatarUrl
                }),
        _authorEntityUpdateAdapter = UpdateAdapter(
            database,
            'author',
            ['login'],
            (AuthorEntity item) => <String, dynamic>{
                  'login': item.login,
                  'url': item.url,
                  'avatar_url': item.avatarUrl
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<AuthorEntity> _authorEntityInsertionAdapter;

  final UpdateAdapter<AuthorEntity> _authorEntityUpdateAdapter;

  @override
  Future<AuthorEntity> select(String login) async {
    return _queryAdapter.query('SELECT DISTINCT * FROM author WHERE login = ?',
        arguments: <dynamic>[login],
        mapper: (Map<String, dynamic> row) => AuthorEntity(
            row['login'] as String,
            row['url'] as String,
            row['avatar_url'] as String));
  }

  @override
  Future<int> insert(AuthorEntity object) {
    return _authorEntityInsertionAdapter.insertAndReturnId(
        object, OnConflictStrategy.ignore);
  }

  @override
  Future<List<int>> insertList(List<AuthorEntity> object) {
    return _authorEntityInsertionAdapter.insertListAndReturnIds(
        object, OnConflictStrategy.ignore);
  }

  @override
  Future<void> update(AuthorEntity object) async {
    await _authorEntityUpdateAdapter.update(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<AuthorEntity> object) async {
    await _authorEntityUpdateAdapter.updateList(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(AuthorEntity object) async {
    if (database is sqflite.Transaction) {
      await super.insertOrUpdate(object);
    } else {
      await (database as sqflite.Database)
          .transaction<void>((transaction) async {
        final transactionDatabase = _$DagashiDatabase(changeListener)
          ..database = transaction;
        await transactionDatabase.authorDao.insertOrUpdate(object);
      });
    }
  }

  @override
  Future<void> insertOrUpdateList(List<AuthorEntity> object) async {
    if (database is sqflite.Transaction) {
      await super.insertOrUpdateList(object);
    } else {
      await (database as sqflite.Database)
          .transaction<void>((transaction) async {
        final transactionDatabase = _$DagashiDatabase(changeListener)
          ..database = transaction;
        await transactionDatabase.authorDao.insertOrUpdateList(object);
      });
    }
  }
}

class _$CommentDao extends CommentDao {
  _$CommentDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _commentEntityInsertionAdapter = InsertionAdapter(
            database,
            'comment',
            (CommentEntity item) => <String, dynamic>{
                  'id': item.id,
                  'single_unique_id': item.singleUniqueId,
                  'body': item.body,
                  'published_at': _dateTimeConverter.encode(item.publishedAt)
                }),
        _commentEntityUpdateAdapter = UpdateAdapter(
            database,
            'comment',
            ['id', 'single_unique_id'],
            (CommentEntity item) => <String, dynamic>{
                  'id': item.id,
                  'single_unique_id': item.singleUniqueId,
                  'body': item.body,
                  'published_at': _dateTimeConverter.encode(item.publishedAt)
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<CommentEntity> _commentEntityInsertionAdapter;

  final UpdateAdapter<CommentEntity> _commentEntityUpdateAdapter;

  @override
  Future<List<CommentEntity>> select(String singleUniqueId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM comment WHERE single_unique_id = ?',
        arguments: <dynamic>[singleUniqueId],
        mapper: (Map<String, dynamic> row) => CommentEntity(
            row['id'] as int,
            row['single_unique_id'] as String,
            row['body'] as String,
            _dateTimeConverter.decode(row['published_at'] as String)));
  }

  @override
  Future<int> insert(CommentEntity object) {
    return _commentEntityInsertionAdapter.insertAndReturnId(
        object, OnConflictStrategy.ignore);
  }

  @override
  Future<List<int>> insertList(List<CommentEntity> object) {
    return _commentEntityInsertionAdapter.insertListAndReturnIds(
        object, OnConflictStrategy.ignore);
  }

  @override
  Future<void> update(CommentEntity object) async {
    await _commentEntityUpdateAdapter.update(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<CommentEntity> object) async {
    await _commentEntityUpdateAdapter.updateList(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(CommentEntity object) async {
    if (database is sqflite.Transaction) {
      await super.insertOrUpdate(object);
    } else {
      await (database as sqflite.Database)
          .transaction<void>((transaction) async {
        final transactionDatabase = _$DagashiDatabase(changeListener)
          ..database = transaction;
        await transactionDatabase.commentDao.insertOrUpdate(object);
      });
    }
  }

  @override
  Future<void> insertOrUpdateList(List<CommentEntity> object) async {
    if (database is sqflite.Transaction) {
      await super.insertOrUpdateList(object);
    } else {
      await (database as sqflite.Database)
          .transaction<void>((transaction) async {
        final transactionDatabase = _$DagashiDatabase(changeListener)
          ..database = transaction;
        await transactionDatabase.commentDao.insertOrUpdateList(object);
      });
    }
  }
}

class _$LabelDao extends LabelDao {
  _$LabelDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _labelEntityInsertionAdapter = InsertionAdapter(
            database,
            'label',
            (LabelEntity item) => <String, dynamic>{
                  'name': item.name,
                  'description': item.description,
                  'color': item.color
                }),
        _labelEntityUpdateAdapter = UpdateAdapter(
            database,
            'label',
            ['name'],
            (LabelEntity item) => <String, dynamic>{
                  'name': item.name,
                  'description': item.description,
                  'color': item.color
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<LabelEntity> _labelEntityInsertionAdapter;

  final UpdateAdapter<LabelEntity> _labelEntityUpdateAdapter;

  @override
  Future<LabelEntity> select(String name) async {
    return _queryAdapter.query('SELECT * FROM label WHERE name = ?',
        arguments: <dynamic>[name],
        mapper: (Map<String, dynamic> row) => LabelEntity(row['name'] as String,
            row['description'] as String, row['color'] as String));
  }

  @override
  Future<int> insert(LabelEntity object) {
    return _labelEntityInsertionAdapter.insertAndReturnId(
        object, OnConflictStrategy.ignore);
  }

  @override
  Future<List<int>> insertList(List<LabelEntity> object) {
    return _labelEntityInsertionAdapter.insertListAndReturnIds(
        object, OnConflictStrategy.ignore);
  }

  @override
  Future<void> update(LabelEntity object) async {
    await _labelEntityUpdateAdapter.update(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateList(List<LabelEntity> object) async {
    await _labelEntityUpdateAdapter.updateList(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> insertOrUpdate(LabelEntity object) async {
    if (database is sqflite.Transaction) {
      await super.insertOrUpdate(object);
    } else {
      await (database as sqflite.Database)
          .transaction<void>((transaction) async {
        final transactionDatabase = _$DagashiDatabase(changeListener)
          ..database = transaction;
        await transactionDatabase.labelDao.insertOrUpdate(object);
      });
    }
  }

  @override
  Future<void> insertOrUpdateList(List<LabelEntity> object) async {
    if (database is sqflite.Transaction) {
      await super.insertOrUpdateList(object);
    } else {
      await (database as sqflite.Database)
          .transaction<void>((transaction) async {
        final transactionDatabase = _$DagashiDatabase(changeListener)
          ..database = transaction;
        await transactionDatabase.labelDao.insertOrUpdateList(object);
      });
    }
  }
}

// ignore_for_file: unused_element
final _dateTimeConverter = DateTimeConverter();
