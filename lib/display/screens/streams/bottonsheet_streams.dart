import 'package:fifth_essence/display/widgets/custom_button_filled.dart';
import 'package:fifth_essence/display/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import '../../widgets/navbar.dart';

void showBottomSheetStreams(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 900,
        decoration: const BoxDecoration(
          color: Color(0xFF392755),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0), // Ajusta el radio según tus preferencias
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding( padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    CustomTextField(labelText: 'OBS IP'),
                    SizedBox(height: 20,),
                    CustomTextField(labelText: 'Port'),
                    SizedBox(height: 20,),
                    CustomTextField(labelText: 'Password'),
                    SizedBox(height: 20,),
                    CustomTextField(labelText: 'Stream Name'),
                    SizedBox(height: 20,),
                    SizedBox(
                      height: 61,
                      width: 336,
                    child: CustomButtonFilled(onPressed:() {Navigator.push(context, MaterialPageRoute(builder: (context) => const NavBar(title: 'xD',),),);}, text: 'Continuar'),
                    ),
                  ],
                ),
        )
      );
    },
  );
}


