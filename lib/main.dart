import 'package:fifth_essence/display/screens/register/register.dart';
import 'package:fifth_essence/display/widgets/navbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fifth essense',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF5737AC),),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(backgroundColor: Color(0xFF5737AC))
      ),
      debugShowCheckedModeBanner: false,
      home: const Register(),
    );
  }
}
