import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/cupertino.dart';

enum Flavor { dev, prd }

class Constants {
  const Constants({@required this.endpoint});

  factory Constants.of() {
    if (_instance != null) {
      return _instance;
    }

    final flavor = EnumToString.fromString(
        Flavor.values, const String.fromEnvironment("FLAVOR"));

    switch (flavor) {
      case Flavor.dev:
        _instance = Constants._dev();
        break;
      case Flavor.prd:
      default:
        _instance = Constants._prd();
    }
    return _instance;
  }

  factory Constants._dev() {
    return const Constants(endpoint: "https://androiddagashi.github.io");
  }

  factory Constants._prd() {
    return const Constants(endpoint: "https://androiddagashi.github.io");
  }

  // Routing
  static const String pageMileStone = '/milestone';

  static Constants _instance;

  final String endpoint;
}
