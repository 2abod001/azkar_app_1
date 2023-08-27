import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({super.key});

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState(){
    super.initState();
    debugPrint('initState');
    Future.delayed(Duration(seconds: 5),(){
    // Navigator.pushNamed(context,'/home_screen' );
      Navigator.pushReplacementNamed(context,'/home_screen' );
    });
  }
  Widget build(BuildContext context) {
    debugPrint('build');
    return Scaffold(
      body: Container(
        alignment: AlignmentDirectional.center,
        decoration: const BoxDecoration(
          gradient:LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
            Color(0xFF7EAA92),
            Color(0xFFC3EDC0),
            Color(0xFFAAC8A7),

          ],),

        ),
         child: Text('المسبحة الالكترونية',style: GoogleFonts.arefRuqaa(
           fontSize: 24,
           fontWeight: FontWeight.w800,
         ), ),
      ),
    );
  }
}
