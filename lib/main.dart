import 'package:car_rental/screens/login_screen.dart';
import 'package:car_rental/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:car_rental/screens/showroom.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/registration_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'rentalGO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.muliTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: Showroom(),
      initialRoute: WelcomeScreen.routeName,
      routes: {
        Showroom.routeName: (ctx) => Showroom(),
        WelcomeScreen.routeName: (ctx) => WelcomeScreen(),
        LoginScreen.routeName: (ctx) => LoginScreen(),
        RegistrationScreen.routeName: (ctx) => RegistrationScreen(),
      },
    );
  }
}
