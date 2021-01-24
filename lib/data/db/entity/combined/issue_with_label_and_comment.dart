import '../issue_entity.dart';
import '../label_entity.dart';
import 'comment_author.dart';

class IssueWithLabelAndComment {
  final IssueEntity issueEntity;

  final List<LabelEntity> labelEntities;

  final List<CommentAuthor> commentAuthorEntities;

  IssueWithLabelAndComment(
      this.issueEntity, this.labelEntities, this.commentAuthorEntities);
}
