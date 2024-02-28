import 'package:fifth_essence/display/widgets/custom_pin_field.dart';
import 'package:flutter/material.dart';
import '../../widgets/custom_button_filled.dart';
import '../../widgets/navbar.dart';

class RegisterCode extends StatelessWidget {
  const RegisterCode({super.key});

  void onChanged(String value) {
    print('El valor actual del campo de entrada es $value');
  }

  void onCompleted(String value) {
    print('El valor final del campo de entrada es $value');
  }

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
                    Text('Enter the code we', style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),),
                  ],
                ),
                const Row(
                  children: [
                    Text('send you', style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),),
                  ],
                ),
                const SizedBox(height: 35),
                const Row(
                  children: [
                    Text('To the number', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal),),
                    Text(' +52 961 328 6990 ', style: TextStyle(color: Color(0xff9C58CB), fontSize: 14, fontWeight: FontWeight.normal),),
                    Text('to verify you.', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal),),
                  ],
                ),
                const SizedBox(height: 45),
                Row(
                  children: [
                    Expanded(
                        child: CustomPinField(onChanged: onChanged, onCompleted: onCompleted)
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text("I didn't get any code?", textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text("Send From Again", textAlign: TextAlign.center,style: TextStyle(color: Color(0xff9C58CB), fontSize: 14, fontWeight: FontWeight.normal),
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
                      {Navigator.push(context, MaterialPageRoute(builder: (context) => const NavBar(title: '',)),
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
