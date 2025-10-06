import 'package:flutter/material.dart';

class AnimatedExample extends StatefulWidget {
  @override
  _AnimatedExampleState createState() => _AnimatedExampleState();
}

class _AnimatedExampleState extends State<AnimatedExample> with SingleTickerProviderStateMixin {
  // Animation controller
  late AnimationController _controller;
  late Animation<double> _scale;

  @override
  void initState() {
    super.initState();
    // Initialize the AnimationController
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this, // Ticker provider
    );

    // Define the scale animation (Tween from 0.5 to 1.0 scale)
    _scale = Tween<double>(begin: 0.5, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose(); // Always dispose the controller
    super.dispose();
  }

  // Function to toggle the animation
  void _toggleAnimation() {
    if (_controller.isCompleted) {
      _controller.reverse(); // Reverse the animation if it's completed
    } else {
      _controller.forward(); // Start the animation if it's not completed
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scale Animation")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Scale animation applied to the Icon
            ScaleTransition(
              scale: _scale, // Bind the animation to the scale
              child: Icon(Icons.star, size: 100, color: Colors.amber),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleAnimation, // Trigger toggle on button press
              child: Text("Toggle Scale Animation"),
            ),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: AnimatedExample()));
