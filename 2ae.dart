import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Basic Widgets")),
      body: Column(
        children: [
          Text("Hello Flutter!", style: TextStyle(fontSize: 24)),
          Image.network(
              "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
              height: 120),
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.blue,
            child: Text("Inside Container", style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }
}
