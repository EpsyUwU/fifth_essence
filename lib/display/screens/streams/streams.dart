import 'package:fifth_essence/core/providers/stream_provider.dart';
import 'package:fifth_essence/display/widgets/category_buttons.dart';
import 'package:fifth_essence/display/widgets/custom_card_streams.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Streams extends ConsumerWidget {
  const Streams({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final repository = ref.watch(streamProvider);

    return FutureBuilder(
        future: repository.listStreams(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final List<dynamic> response = snapshot.data!.data as List<dynamic>;
            return Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFF5737AC), Color(0xFF392755)],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: response.length ,
                            itemBuilder: (context, index) {
                              return CustomCardStream();
                            }
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          } else {
            return const CircularProgressIndicator();
          }
        }
    );
  }
}
