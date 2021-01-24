import 'package:dagashi_flutter/data/repository/issue_repository.dart';
import 'package:dagashi_flutter/model/issue.dart';
import 'package:dagashi_flutter/provider/repository_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/all.dart';

ChangeNotifierProvider<PathIssuesViewModel> pathIssuesViewModelProvider(int number, String path) {
  return ChangeNotifierProvider((ref) =>
      PathIssuesViewModel(number, path, ref.read(issueRepositoryProvider)));
}

mixin PathIssuesViewModelInput {}

mixin PathIssuesViewModelOutput {
  List<Issue> issues;
}

class PathIssuesViewModel extends ChangeNotifier
    with PathIssuesViewModelInput, PathIssuesViewModelOutput {
  PathIssuesViewModel(this._number, this._path, this._issueRepository) {
    _issueRepository.refresh(_path);
    _bindingOutput();
  }

  final int _number;

  final String _path;

  final IssueRepository _issueRepository;

  List<Issue> _issues;

  @override
  List<Issue> get issues => _issues;

  void _bindingOutput() {
    _issueRepository.issue(_number).listen((value) {
      _issues = value;
      notifyListeners();
    });
  }
}
