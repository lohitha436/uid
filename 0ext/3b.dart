import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      MaterialApp(home: BreakpointDemo());
}

class BreakpointDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    String screen = width < 600 ? "Mobile" : "Tablet";

    return Scaffold(
      appBar: AppBar(title: Text("Breakpoints")),
      body: Center(child: Text("Screen Type: $screen")),
    );
  }
}
