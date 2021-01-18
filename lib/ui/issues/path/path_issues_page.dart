import 'package:dagashi_flutter/model/mile_stone.dart';
import 'package:dagashi_flutter/ui/issues/path/path_issues_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PathIssuesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MileStone _args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(_args.title),
      ),
      body: HookBuilder(builder: (context) {
        final issues = useProvider(
            pathIssuesViewModelProvider(_args.number, _args.path)
                .select((value) => value.issues));

        return Scaffold();
      }),
    );
  }
}
