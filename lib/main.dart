import 'package:crm_app_pr/dashboard.dart';
import 'package:crm_app_pr/login.dart';
import 'package:crm_app_pr/projects.dart';
import 'package:crm_app_pr/ux_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/crm': (context) => const CRM(),
        '/dashboard': (context) => const Dashboard(),
        '/projects': (context) => const Projects(),
      },
      home: const UX(),
    );
  }
}
