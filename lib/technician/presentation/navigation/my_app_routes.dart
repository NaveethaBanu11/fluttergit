import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../notification/notification_screen.dart';
import '../screens/forgot_password_screen.dart';
import '../screens/login_screen.dart';
import '../screens/new_password.dart';
import '../screens/splash_screen.dart';
import '../screens/verification_code_screen.dart';


class MyAppRoutes {
  final GoRouter router = GoRouter(
    initialLocation: '/splashScreen', // Set initial route
    routes: [
      GoRoute(
        name: 'splashScreen',
        path: '/splashScreen',
        pageBuilder: (context, state) {
          return MaterialPage(child: SplashScreen());
        },
      ),
      GoRoute(
        name: 'loginScreen',
        path: '/loginScreen',
        pageBuilder: (context, state) {
          return MaterialPage(child: LoginScreen());
        },
      ),
      GoRoute(
        name: 'forgotPassword',
        path: '/forgotPassword',
        pageBuilder: (context, state) {
          return MaterialPage(child: ForgotPasswordScreen());
        },
      ),
      GoRoute(
        name: 'verificationCode',
        path: '/verificationCode',
        pageBuilder: (context, state) {
          return const MaterialPage(child: Verificationcode());
        },
      ),
      GoRoute(
        name: 'newPassword',
        path: '/newPassword',
        pageBuilder: (context, state) {
          return MaterialPage(child: NewPassword());
        },
      ),
      GoRoute(
        name: 'notification',
        path: '/notification',
        pageBuilder: (context, state) {
          return MaterialPage(child: NotificationScreen());
        },
      ),

    ],
  );
}
