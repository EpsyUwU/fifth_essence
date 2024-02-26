import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class CustomPhoneNumberInput extends StatelessWidget {
  final Function(PhoneNumber) onInputChanged;

  const CustomPhoneNumberInput({super.key, required this.onInputChanged});

  @override
  Widget build(BuildContext context) {
    return InternationalPhoneNumberInput(
      onInputChanged: onInputChanged,
      selectorConfig: const SelectorConfig(
        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
        showFlags: false,

      ),
      ignoreBlank: false,
      autoValidateMode: AutovalidateMode.disabled,
      selectorTextStyle: const TextStyle(color: Colors.white),
      initialValue: PhoneNumber(isoCode: 'MX'),
      textFieldController: TextEditingController(),
      inputDecoration: InputDecoration(
        labelStyle: TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Color(0xFF9C58CB), width: 2),
        ),
        fillColor: Colors.transparent,
        filled: true,
      ),
      textStyle: TextStyle(color: Colors.white),
    );
  }
}

