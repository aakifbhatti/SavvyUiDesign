import 'package:flutter/material.dart';
import 'package:savvyuiapp/signin.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savvyuiapp/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     


      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
       initialRoute: '/',
      routes: {
        '/': (context) => const signin(),
        '/signup': (context) => const signup(),
      },
      
    );
  }
}
