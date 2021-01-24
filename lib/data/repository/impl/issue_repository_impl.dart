import 'package:dagashi_flutter/data/api/dagashi_api.dart';
import 'package:dagashi_flutter/data/api/response/issue_response.dart';
import 'package:dagashi_flutter/data/db/issue_database.dart';
import 'package:dagashi_flutter/data/repository/issue_repository.dart';
import 'package:dagashi_flutter/data/repository/mapper/issue_mapper.dart';
import 'package:dagashi_flutter/model/issue.dart';
import 'package:flutter/material.dart';

class IssueRepositoryImpl implements IssueRepository {
  IssueRepositoryImpl(
      {@required DagashiApi dagashiApi, @required IssueDatabase issueDatabase})
      : _dagashiApi = dagashiApi,
        _issueDatabase = issueDatabase;

  final DagashiApi _dagashiApi;

  final IssueDatabase _issueDatabase;

  @override
  Future<void> refresh(String path) async {
    IssueRootResponse response = await _dagashiApi.issues(path: path);
    await _issueDatabase.saveIssue(IssueMapper.toEntity(response));
  }

  @override
  Stream<List<Issue>> issue(int number) {
    return _issueDatabase
        .issueEntity(number)
        .map((list) => list.map((e) => IssueMapper.toModel(e)).toList());
  }
}
