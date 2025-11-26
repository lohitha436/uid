import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (_) => HomeScreen(),
    '/next': (_) => NextScreen(),
  },
));

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text("Home")),
        body: Center(
          child: ElevatedButton(
            child: Text("Go Next"),
            onPressed: () => Navigator.pushNamed(context, '/next'),
          ),
        ),
      );
}

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Scaffold(appBar: AppBar(title: Text("Next")));
}
