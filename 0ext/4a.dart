import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      MaterialApp(home: Screen1());
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen 1")),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to Screen 2"),
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (_) => Screen2())),
        ),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Scaffold(appBar: AppBar(title: Text("Screen 2")));
}
