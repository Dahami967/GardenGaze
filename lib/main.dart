import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart'; // Import device_preview
import 'screens/login_screen.dart';
import 'screens/dashboard_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,  // Enable device preview
      builder: (context) => GardenARApp(),
    ),
  );
}

class GardenARApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Garden AR App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),  // Correct usage of const and class name
        '/dashboard': (context) => const DashboardScreen(),
      },
      builder: DevicePreview.appBuilder,  // DevicePreview integration
    );
  }
}
