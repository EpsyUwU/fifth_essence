import 'package:fifth_essence/core/data/models/response/publication_response.dart';
import 'package:fifth_essence/display/widgets/category_buttons.dart';
import 'package:fifth_essence/display/widgets/custom_post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers/publication_provider.dart';

class Post extends ConsumerWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final repository = ref.watch(publicationProvider);

    return FutureBuilder(
      future: repository.listPublications(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final List<dynamic> response = snapshot.data!.data as List<dynamic>;
          return Scaffold(
              body: Padding(
                  padding: const EdgeInsets.all(16),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CategoryButtons(),
                        const SizedBox(height: 15),
                        const Text("All posts",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                        ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: response.length,
                            itemBuilder: (context, index) {
                              return CustomPost(
                                title: response[index]['title'],
                              );
                            })
                      ],
                    ),
                  )) //
              );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
