import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      MaterialApp(home: HomeScreen());
}

class MyButton extends StatelessWidget {
  final String text;
  MyButton(this.text);

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(12)),
        child: Text(text, style: TextStyle(color: Colors.white)),
      );
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(child: MyButton("Click Me")),
      );
}
