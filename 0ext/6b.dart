import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool dark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: dark ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Theme Example")),
        body: Center(
          child: Text(
            dark ? "Dark Theme" : "Light Theme",
            style: TextStyle(fontSize: 22),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => setState(() => dark = !dark),
          child: Icon(dark ? Icons.dark_mode : Icons.light_mode),
        ),
      ),
    );
  }
}
