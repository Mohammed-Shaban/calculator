
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LunchScareen extends StatefulWidget {
  const LunchScareen({Key? key}) : super(key: key);

  @override
  State<LunchScareen> createState() => _LunchScareenState();
}

class _LunchScareenState extends State<LunchScareen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.pushReplacementNamed(context, '/main_screen');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentDirectional.topCenter,
          colors: [
            Color(0xffFEB139),
            Color(0xffFFF80A),
          ],
        ),
      ),
      child: Center(
        child: Text(
          'Calculator App',
          style: GoogleFonts.nobile(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    ));
  }
}
