import 'package:flutter/material.dart';
import 'Pages/DataPage.dart';
import 'Pages/MyHomePage.dart';
import 'Pages/Workspace.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => MyHomePage(),
        'workspace': (context) => Workspace(),
        'dataPage': (context) => DataPage(),
      },
    );
  }
}

