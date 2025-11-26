import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LayoutDemo());
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row Column Stack")),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Text("A"), Text("B"), Text("C")],
          ),
          SizedBox(height: 20),
          Stack(
            children: [
              Container(width: 150, height: 150, color: Colors.blue),
              Positioned(
                  top: 40,
                  left: 40,
                  child: Container(width: 70, height: 70, color: Colors.red))
            ],
          )
        ],
      ),
    );
  }
}
