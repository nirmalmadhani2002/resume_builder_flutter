import 'package:flutter/material.dart';
import 'Pages/BuildOpationsPage/Contact info.dart';
import 'Pages/DataPage.dart';
import 'Pages/MyHomePage.dart';
import 'Pages/Workspace.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => MyHomePage(),
        'workspace': (context) => Workspace(),
        'dataPage': (context) => DataPage(item: 'name',),
        'contactinfo': (context) => Contactinfo(),
      },
    );
  }
}

