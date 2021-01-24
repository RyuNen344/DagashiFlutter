import 'package:dagashi_flutter/model/issue.dart';

abstract class IssueRepository {
  Future<void> refresh(String path);

  Stream<List<Issue>> issue(int number);
}
