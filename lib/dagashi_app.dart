import 'package:dagashi_flutter/constants.dart';
import 'package:dagashi_flutter/ui/issues/path/path_issues_page.dart';
import 'package:dagashi_flutter/ui/mile_stone/mile_stone_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

class DagashiApp extends HookWidget {
  static const Locale _locale = Locale('ja', 'JP');

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Dagashi',
      locale: _locale,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      supportedLocales: const [_locale],
      home: MileStonePage(),
      routes: {
        Constants.pageMileStone: (context) => MileStonePage(),
        Constants.issuesPath: (context) => PathIssuesPage()
      },
    );
  }
}
