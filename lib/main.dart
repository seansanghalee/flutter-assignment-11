import 'package:assignment_11/authentication/initial_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 11',
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(72, 142, 223, 1),
        scaffoldBackgroundColor: Colors.white,
        inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(
            color: Colors.black,
          ),
        ),
        useMaterial3: false,
      ),
      home: const InitialScreen(),
    );
  }
}
