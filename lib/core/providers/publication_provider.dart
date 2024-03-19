import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/repositories/publication_repository.dart';

final publicationProvider = Provider<PublicationRepository>((ref) {
  return PublicationRepository();
});