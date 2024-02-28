import 'package:flutter/cupertino.dart';

class ScreenProperties {
  static getScreenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }
}