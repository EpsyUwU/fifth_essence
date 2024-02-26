import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomPinField extends StatelessWidget {
  final Function(String) onChanged;
  final Function(String) onCompleted;

  const CustomPinField({super.key, required this.onChanged, required this.onCompleted});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 4,
      obscureText: false,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(10),
        fieldHeight: 60,
        fieldWidth: 60,
        activeFillColor: Colors.transparent,
        inactiveFillColor: Colors.transparent,
        inactiveColor: const Color(0xff9C58CB),
        selectedFillColor: Colors.transparent,
        selectedColor: const Color(0xff9C58CB),
        activeColor: const Color(0xff9C58CB),
      ),
      animationDuration: const Duration(milliseconds: 300),
      enableActiveFill: true,
      onCompleted: onCompleted,
      onChanged: onChanged,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      textStyle: const TextStyle(color: Colors.white, fontSize: 20),
    );
  }
}
