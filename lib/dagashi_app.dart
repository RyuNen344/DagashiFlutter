import 'package:dagashi_flutter/ui/mile_stone/mile_stone_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class DagashiApp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Dagashi',
      home: MileStonePage(),
    );
  }
}
