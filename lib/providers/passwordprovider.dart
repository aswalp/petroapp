import 'package:flutter_riverpod/flutter_riverpod.dart';

final passwordprovider = StateProvider<bool>((ref) {
  return true;
});

final navigationProvider = StateProvider<int>((ref) {
  return 0;
});
