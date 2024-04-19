import 'package:fifth_essence/core/data/models/request/user_request.dart';
import 'package:fifth_essence/display/screens/profile/profile.dart';
import 'package:fifth_essence/display/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/data/models/request/role_request.dart';
import '../../../core/providers/user_provider.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    UserRequest userRequest = UserRequest();
    userRequest.email = "sr.conejo.uwu@gmail.com";
    userRequest.password = "";
    userRequest.roles = {RoleRequest(name: "admin")};

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(children: [
            Icon(
              Icons.arrow_back,
              size: 35,
              color: Colors.white,
            ),
            const Text(
              'Edit Profile',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Expanded(child: Consumer(builder: (context, ref, child) {
              return GestureDetector(
                child: const Icon(
                  Icons.save,
                  size: 35,
                  color: Colors.white,
                ),
                onTap: () async {
                  await ref
                      .read(userProvider)
                      .update(userRequest)
                      .then((value) => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile(),))
                  });
                },
              );
            })),
          ]),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Stack(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: const DecorationImage(
                      image:
                          NetworkImage('https://picsum.photos/100/100?random'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: const Color(0xff9C58CB),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 61,
            width: 336,
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
                labelText: "Username",
                labelStyle: const TextStyle(color: Colors.white),
                // Color del texto de etiqueta
                prefixIcon: const Icon(Icons.text_fields,
                    color: Colors.white), // Color del ícono
              ),
              onChanged: (value) {
                userRequest.username = value;
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 61,
            width: 336,
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
                labelText: "Phone number",
                labelStyle: const TextStyle(color: Colors.white),
                // Color del texto de etiqueta
                prefixIcon: const Icon(Icons.phone,
                    color: Colors.white), // Color del ícono
              ),
              onChanged: (value) {
                userRequest.phoneNumber = value;
              },
            ),
          )
        ],
      ),
    ));
  }
}
