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

// Mobile Layout
class MobileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.smartphone, size: 100, color: Colors.blueAccent),
            SizedBox(height: 20),
            Text('Mobile Layout',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text('This layout is optimized for mobile screens.',
                textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}

// Tablet Layout
class TabletLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.tablet, size: 100, color: Colors.orange),
            SizedBox(width: 30),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Tablet Layout',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
                Text('Optimized for medium-sized screens.',
                    textAlign: TextAlign.center),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// Desktop Layout
class DesktopLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.desktop_mac, size: 100, color: Colors.green),
          SizedBox(width: 40),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Desktop Layout',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text('Designed for large screens with more content space.',
                  textAlign: TextAlign.center),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                child: Text('Explore Features'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

