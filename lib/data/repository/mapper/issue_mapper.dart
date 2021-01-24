import 'package:dagashi_flutter/data/api/response/issue_response.dart';
import 'package:dagashi_flutter/data/db/entity/author_entity.dart';
import 'package:dagashi_flutter/data/db/entity/combined/comment_author.dart';
import 'package:dagashi_flutter/data/db/entity/combined/issue_with_label_and_comment.dart';
import 'package:dagashi_flutter/data/db/entity/comment_entity.dart';
import 'package:dagashi_flutter/data/db/entity/issue_entity.dart';
import 'package:dagashi_flutter/data/db/entity/label_entity.dart';
import 'package:dagashi_flutter/model/author.dart';
import 'package:dagashi_flutter/model/comment.dart';
import 'package:dagashi_flutter/model/issue.dart';
import 'package:dagashi_flutter/model/label.dart';

class IssueMapper {
  static List<IssueWithLabelAndComment> toEntity(IssueRootResponse response) {
    return response.issues.nodes.asMap().keys.toList().map((index) {
      return IssueWithLabelAndComment(
          IssueEntity(
              '${response.number}_$index',
              index,
              response.number,
              response.issues.nodes[index].url,
              response.issues.nodes[index].title,
              response.issues.nodes[index].body),
          _LabelMapper.toEntity(response.issues.nodes[index].labels),
          _CommentMapper.toEntity('${response.number}_$index',
              response.issues.nodes[index].comments));
    }).toList();
  }

  static Issue toModel(IssueWithLabelAndComment issueWithLabelAndComment) {
    return Issue(
        url: issueWithLabelAndComment.issueEntity.url,
        title: issueWithLabelAndComment.issueEntity.title,
        body: issueWithLabelAndComment.issueEntity.body,
        labels: issueWithLabelAndComment.labelEntities
            .map((e) => _LabelMapper.toModel(e))
            .toList(),
        comments: issueWithLabelAndComment.commentAuthorEntities
            .map((e) => _CommentMapper.toModel(e))
            .toList());
  }
}

class _LabelMapper {
  static List<LabelEntity> toEntity(LabelsResponse labelsResponse) {
    return labelsResponse.nodes
        .map((e) => LabelEntity(e.name, e.description, e.color))
        .toList();
  }

  static Label toModel(LabelEntity labelEntity) {
    return Label(
        name: labelEntity.name,
        description: labelEntity.description,
        color: labelEntity.color);
  }
}

class _CommentMapper {
  static List<CommentAuthor> toEntity(
      String singleUniqueId, CommentsResponse response) {
    return response.nodes.asMap().keys.toList().map((index) {
      return CommentAuthor(
          CommentEntity(index, singleUniqueId, response.nodes[index].body,
              response.nodes[index].publishedAt),
          _AuthorMapper.toEntity(response.nodes[index].author));
    }).toList();
  }

  static Comment toModel(CommentAuthor commentAuthor) {
    return Comment(
        body: commentAuthor.commentEntity.body,
        publishedAt: commentAuthor.commentEntity.publishedAt,
        author: _AuthorMapper.toModel(commentAuthor.authorEntity));
  }
}

class _AuthorMapper {
  static AuthorEntity toEntity(AuthorResponse response) {
    return AuthorEntity(response.login, response.url, response.avatarUrl);
  }

  static Author toModel(AuthorEntity authorEntity) {
    return Author(
        login: authorEntity.login,
        url: authorEntity.url,
        avatarUrl: authorEntity.avatarUrl);
  }
}
