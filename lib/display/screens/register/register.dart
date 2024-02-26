import 'package:fifth_essence/display/screens/register/register_code.dart';
import 'package:fifth_essence/display/widgets/custom_button_filled.dart';
import 'package:fifth_essence/display/widgets/custom_button_outline.dart';
import 'package:fifth_essence/display/widgets/custom_phone_number_input.dart';
import 'package:fifth_essence/display/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF5737AC)
                  , Color(0xFF392755)],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 85),
                const Row(
                  children: [
                  Text('Login', style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),),
                  ],
                ),
                const SizedBox(height: 35),
                const Row(
                  children: [
                    Text('Login to the app with your phone number or gmail', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal),),
                  ],
                ),
                const SizedBox(height: 63),
                Row(
                  children: [
                    Expanded(
                      child: CustomButtonOutline(onPressed:() {Navigator.push(context, MaterialPageRoute(builder: (context) => const NavBar(title: 'xD',),),);
                        } , text: 'Login with google', imageAsset: 'assets/image/logo_google.png',)
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: const Color(0xFF9C58CB),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text('O', style: TextStyle(color: Color(0xFF9C58CB), fontSize: 16, fontWeight: FontWeight.normal)),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: const Color(0xFF9C58CB),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: CustomPhoneNumberInput(onInputChanged: (PhoneNumber number) {
                        print(number.phoneNumber);
                      },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
            padding: const EdgeInsets.all(16),
              child: Row(
              children: [
                Expanded(
                  child: CustomButtonFilled(onPressed:()
                    {Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterCode(),),
                    );}, text: 'Next')
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


