import 'package:bmicalculator/main_page.dart';
import 'package:flutter/material.dart';

// This is the entry point of the application.
void main() {
  // Calls to the runApp method and pass in a object of MyApp class.
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  // The things that should be shown in the ui should written inside build() function.
  // StatelessWidgets has a build() method. 
  Widget build(BuildContext context) {
    // Material is the UI pattern used in Android. For iOS it's Cupertino.
    return MaterialApp(
      title: 'Adapt a Book',
      // This is the theme in light mode.
      // You can use darkTheme if you want to implement for dark mode.
      theme: ThemeData(
        // This is the theme of your application.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: Says what is the first screen of the MaterialApp
      home: const MainPage(),
    );
  }
}

