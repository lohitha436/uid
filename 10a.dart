import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:exp_10_a/main.dart';

void main() {
  testWidgets('CustomButton displays correctly and responds to taps', (WidgetTester tester) async {
    // Define a flag to check if the button is pressed.
    bool isPressed = false;

    // Build the CustomButton widget
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CustomButton(
            label: 'Test Button',
            onPressed: () {
              isPressed = true; // Set true when pressed
              debugPrint('Button was pressed!');
            },
          ),
        ),
      ),
    );

    // Verify that the button is displayed
    expect(find.text('Test Button'), findsOneWidget);

    // Tap the button
    await tester.tap(find.text('Test Button'));
    await tester.pump(); // Rebuild the widget after the tap

    // Verify that the button is still displayed
    expect(find.text('Test Button'), findsOneWidget);

    // Verify that the onPressed callback was triggered
    expect(isPressed, isTrue);
  });
}
