import 'package:floor/floor.dart';

@dao
abstract class BaseDao<T> {
  @Insert(onConflict: OnConflictStrategy.ignore)
  Future<int> insert(T object);

  @Insert(onConflict: OnConflictStrategy.ignore)
  Future<List<int>> insertList(List<T> object);

  @Update(onConflict: OnConflictStrategy.abort)
  Future<void> update(T object);

  @Update(onConflict: OnConflictStrategy.abort)
  Future<void> updateList(List<T> object);

  @transaction
  Future<void> insertOrUpdate(T object) async {
    int id = await insert(object);
    if (id == -1) await update(object);
  }

  @transaction
  Future<void> insertOrUpdateList(List<T> object) async {
    List<int> insertResult = await insertList(object);
    List<T> updateCandidate = <T>[];
    insertResult.asMap().forEach((index, result) {
      if (result == -1) {
        updateCandidate.add(object[index]);
      }
    });
    if (updateCandidate.isNotEmpty) {
      updateList(updateCandidate);
    }
  }
}
