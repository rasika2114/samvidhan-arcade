import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:samvidhan_arcade/main.dart';

void main() {
  testWidgets('App starts with splash screen', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(SamvidhanArcadeApp());

    // Verify that the splash screen is displayed.
    // Assuming the splash screen contains a quote or logo, test for that text or widget.
    expect(find.text('Your Splash Screen Quote Here'), findsOneWidget);
    // You can also test for a specific widget like Image or CircularProgressIndicator
    // expect(find.byType(Image), findsOneWidget);

    // Optionally, wait for the splash screen to disappear if it transitions to another page.
    await tester.pumpAndSettle();

    // Verify that the login screen is displayed after the splash screen.
    expect(find.text('Login'), findsOneWidget); // Assuming the login screen has 'Login' text.
  });
}
