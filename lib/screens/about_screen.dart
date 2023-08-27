import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  String _message='لا يوجد رسالة ';
  @override
  Widget build(BuildContext context) {
    ModalRoute? modalRoute= ModalRoute.of(context);
    if(modalRoute != null){
     Map<String,dynamic>map= modalRoute.settings.arguments as Map<String,dynamic>;
     if(map.containsKey('message')){
       _message= map['message'];
     }
    }
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

        centerTitle: true,
        title: Text('عن التطبيق ',
          style: GoogleFonts.arefRuqaa(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),),
      ),
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
        child: Text(
          _message,
          style: GoogleFonts.arefRuqaa(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),),
      ),
    );
  }
}

