import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Demo()));

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateful Demo")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("This is Stateless Text Widget"),
          SizedBox(height: 20),
          Text("Counter: $count"),
          ElevatedButton(
              onPressed: () => setState(() => count++),
              child: Text("Increase"))
        ],
      ),
    );
  }
}
