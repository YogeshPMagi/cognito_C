
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:myapp/themes/theme_model.dart';

// Suggested code may be subject to a license. Learn more: ~LicenseLog:2475871793.
import'package:myapp/screens/log_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeModel().isDark ? ThemeData.dark() : ThemeData.light(),

      home:const LoginScreen(),
    );
      
  }
  }



  