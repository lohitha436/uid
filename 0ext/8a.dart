import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: AnimDemo()));

class AnimDemo extends StatefulWidget {
  @override
  _AnimDemoState createState() => _AnimDemoState();
}

class _AnimDemoState extends State<AnimDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController ctrl;

  @override
  void initState() {
    super.initState();
    ctrl = AnimationController(
        vsync: this, duration: Duration(seconds: 2))..repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animation")),
      body: Center(
        child: FadeTransition(
          opacity: ctrl,
          child: Text("Fading Text", style: TextStyle(fontSize: 28)),
        ),
      ),
    );
  }
}
