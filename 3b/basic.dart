import 'package:flutter/material.dart';

void main() {
  runApp(ResponsiveApp());
}

class ResponsiveApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MediaQuery Responsive UI',
      debugShowCheckedModeBanner: false,
      home: ResponsiveHomePage(),
    );
  }
}

class ResponsiveHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double width = screenSize.width;

    Widget content;

    if (width < 600) {
      content = MobileLayout();
    } else if (width >= 600 && width < 1200) {
      content = TabletLayout();
    } else {
      content = DesktopLayout();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive UI with MediaQuery"),
        backgroundColor: Colors.teal,
      ),
      body: content,
    );
  }
}
