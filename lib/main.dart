import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:fms/technician/presentation/screens/forgot_password_screen.dart';
import 'package:fms/technician/presentation/screens/login_screen.dart';
import 'package:fms/technician/presentation/screens/new_password.dart';
import 'package:fms/technician/presentation/screens/splash_screen.dart';
import 'package:fms/technician/presentation/screens/technician_home%20_screen.dart';
import 'package:fms/technician/presentation/screens/verification_code_screen.dart';


void main() {
  runApp(
  DevicePreview(
    builder: (context)=>
    MyApp()
  )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter UI Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/home':(context)=>HomePage(),
        '/forgot-password': (context) => ForgotPasswordScreen(),
        '/verification-code': (context) => Verificationcode(),
        '/new-password':(context)=>NewPassword(),
      },
    );
  }
}
