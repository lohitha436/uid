import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: SlideDemo()));

class SlideDemo extends StatefulWidget {
  @override
  _SlideDemoState createState() => _SlideDemoState();
}

class _SlideDemoState extends State<SlideDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController ctrl;
  late Animation<Offset> slide;

  @override
  void initState() {
    super.initState();
    ctrl =
        AnimationController(vsync: this, duration: Duration(seconds: 2))..repeat(reverse: true);
    slide = Tween(begin: Offset(-1, 0), end: Offset(1, 0)).animate(ctrl);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text("Slide Animation")),
        body: Center(child: SlideTransition(position: slide, child: Text("Slide"))),
      );
}
