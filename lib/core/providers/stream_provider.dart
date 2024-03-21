import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/repositories/stream_repository.dart';

final streamProvider = Provider<StreamRepository>((ref) {
  return StreamRepository();
});