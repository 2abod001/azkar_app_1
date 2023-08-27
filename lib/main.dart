import 'package:azkar_app_1/screens/about_screen.dart';
import 'package:azkar_app_1/screens/faqs_screen.dart';
import 'package:azkar_app_1/screens/home_screen.dart';
import 'package:azkar_app_1/screens/launch_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
void main(){
runApp(MyApp());


}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
      GlobalWidgetsLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar'),
        Locale('en'),
      ],
      locale: const Locale('ar'),
      // home: LaunchScreen(),
      initialRoute: '/launch_screen',
      routes: {
      '/launch_screen':(context)=> const LaunchScreen(),
      '/home_screen': (context)=>  HomeScreen(),
        '/about_screen': (context)=>  const AboutScreen(),
        '/faqs_screen': (context)=>   const FAQsScreen(message: ' بيانات واجهة الاسئلة الشائعة'),


      },
    );
  }
}
