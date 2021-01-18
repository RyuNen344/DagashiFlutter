import 'package:hooks_riverpod/all.dart';

class ProviderLogger extends ProviderObserver {
  @override
  void didUpdateProvider(ProviderBase provider, Object newValue) {
    print(
        '{\n        "provider": "${provider.name ?? provider.runtimeType}",\n       "newValue": "$newValue"\n}');
  }
}
