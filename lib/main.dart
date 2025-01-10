import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../views/start.dart';
import '../views//home.dart';
import '../views/login.dart';
import '../views/signup.dart';
import '../providers/data_provider.dart';
import '../providers/user_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => UserProvider()),
      ChangeNotifierProvider(create: (_) => DataProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MyHomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const StartPage(),
        '/signin': (context) => SigninPage(),
        '/signup': (context) => SignupPage(),
        '/home': (context) => const MyHomePage(),
      },
    );
  }
}