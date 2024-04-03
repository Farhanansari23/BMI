import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        primaryColor: Color(0xff0a031),
        scaffoldBackgroundColor: Color(0xff0a031),
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.deepPurple[900],
      ),

        // appBarTheme: ,
        // drawerTheme: ,

      ),
      home: InputPage(),
    );
  }
}

