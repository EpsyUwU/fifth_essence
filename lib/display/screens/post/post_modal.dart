import 'dart:ffi';
import 'dart:math';

import 'package:fifth_essence/core/data/models/request/publication_request.dart';
import 'package:fifth_essence/core/providers/publication_provider.dart';
import 'package:fifth_essence/core/providers/user_provider.dart';
import 'package:fifth_essence/display/screens/post/post.dart';
import 'package:fifth_essence/display/widgets/custom_button_filled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../widgets/navbar.dart';

void PostModal(BuildContext context) {
  PublicationRequest request = PublicationRequest();

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return Padding(
        padding: EdgeInsets.only(
          bottom: max(0, MediaQuery.of(context).viewInsets.bottom - 100),
        ),
        child: Container(
          height: 300,
          decoration: const BoxDecoration(
            color: Color(0xFF392755),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 70,
                width: 355,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFF9C58CB), // Color del borde normal
                        width: 2.0, // Ancho del borde normal
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFF9C58CB), // Color del borde enfocado
                        width: 2.0, // Ancho del borde enfocado
                      ),
                    ),
                    labelText: "title",
                    labelStyle: const TextStyle(color: Colors.white),
                    // Color del texto de etiqueta
                    prefixIcon: const Icon(Icons.text_fields,
                        color: Colors.white), // Color del ícono
                  ),
                  onChanged: (value) {
                    request.title = value;
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 70,
                width: 355,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFF9C58CB), // Color del borde normal
                        width: 2.0, // Ancho del borde normal
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFF9C58CB), // Color del borde enfocado
                        width: 2.0, // Ancho del borde enfocado
                      ),
                    ),
                    labelText: "body",
                    labelStyle: const TextStyle(color: Colors.white),
                    // Color del texto de etiqueta
                    prefixIcon: const Icon(Icons.text_fields,
                        color: Colors.white), // Color del ícono
                  ),
                  onChanged: (value) {
                    request.body = value;
                  },
                ),
              ),
              Consumer(builder: (context, ref, child) {
                return Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomButtonFilled(
                            text: 'Post',
                            onPressed: () async {
                              SharedPreferences prefs = await SharedPreferences.getInstance();
                              request.authorId = prefs.getInt('userId')!;

                              await ref.read(publicationProvider)
                                  .createPublication(request).then((value) => {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const NavBar(title: 'Post',)))
                              });
                            },
                          ),
                        ),
                      ],
                    ));
              }),
            ],
          ),
        ),
      );
    },
  );
}
