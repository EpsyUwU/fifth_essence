import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/repositories/user_repository.dart';

final userProvider = Provider<UserRepository>((ref) {
  return UserRepository();
});