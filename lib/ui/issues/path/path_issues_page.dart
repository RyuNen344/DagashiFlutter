import 'package:dagashi_flutter/model/mile_stone.dart';
import 'package:flutter/material.dart';

class PathIssuesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MileStone _args = ModalRoute.of(context).settings.arguments;

    debugPrint('$_args');

    return Scaffold();
  }
}
