import 'package:dagashi_flutter/model/issue.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/all.dart';

ChangeNotifierProvider<PathIssuesViewModel> pathIssuesViewModelProvider(
    int number, String path) {
  return ChangeNotifierProvider((ref) => PathIssuesViewModel(number, path));
}

mixin PathIssuesViewModelInput {}

mixin PathIssuesViewModelOutput {
  List<Issue> issues;
}

class PathIssuesViewModel extends ChangeNotifier
    with PathIssuesViewModelInput, PathIssuesViewModelOutput {
  PathIssuesViewModel(this._number, this._path);

  final int _number;

  final String _path;

  List<Issue> _issues;

  @override
  List<Issue> get issues => _issues;
}
