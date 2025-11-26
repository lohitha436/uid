import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      MaterialApp(home: ResponsiveUI());
}

class ResponsiveUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: Text("Responsive UI")),
      body: Center(
        child: Container(
          width: w * 0.5,
          height: 100,
          color: Colors.green,
          child: Center(child: Text("50% width box")),
        ),
      ),
    );
  }
}
