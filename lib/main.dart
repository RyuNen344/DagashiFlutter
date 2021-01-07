import 'dart:async';

import 'package:dagashi_flutter/dagashi_app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Function originalOnError = FlutterError.onError;
  FlutterError.onError = (errorDetails) async {
    originalOnError(errorDetails);
  };

  if (kReleaseMode) {
    debugPrint = (message, {wrapWidth}) {};
  }

  runZonedGuarded(() {
    runApp(ProviderScope(child: DagashiApp()));
  }, (error, stackTrace) {
    print(stackTrace);
  });
}
