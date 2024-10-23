import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_project_app/main.dart';  // Use your package name
  // Adjusted the import to correct file path

void main() {
  testWidgets('Verify Login Page loads correctly', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(const MyApp());  // MyApp constructor is const

    // Verify the Login Page has the required elements.
    expect(find.text('Login Page'), findsOneWidget);  // Verifies the AppBar title
    expect(find.byType(TextField), findsNWidgets(2));  // Verifies 2 TextFields (username, password)
    expect(find.byType(ElevatedButton), findsOneWidget);  // Verifies there's a login button

    // Enter some text into the username and password fields
    await tester.enterText(find.byType(TextField).first, 'username');
    await tester.enterText(find.byType(TextField).last, 'password');

    // Tap the login button
    await tester.tap(find.byType(ElevatedButton));

    // Rebuild the widget after the state has changed.
    await tester.pump();
  });
}

