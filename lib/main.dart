import 'package:calculator/Screens/Luanch_screen.dart';
import 'package:calculator/Screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/lunch_screen',
       routes: {
         '/lunch_screen': (context)=>const LunchScareen(),
         '/main_screen': (context)=>const MainScrren(),
       },
    );
  }
}

