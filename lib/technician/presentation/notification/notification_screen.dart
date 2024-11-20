import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'notification_item.dart'; // Import the NotificationItem widget

class NotificationScreen extends StatefulWidget {
  static const String routeName = '/notification'; // Add this line
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true, // This will show the default back arrow
        title: Text(
          'Notifications',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w500,
            fontSize: 21,
            color: Colors.black,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black), // Set arrow color to black
        elevation: 0, // Remove shadow
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            NotificationItem(
              title: 'Contractor',
              subtitle: 'Your OTP is 45678',
              avatarPath: 'assets/images/avatar.png',
              subtitleFontSize: 14,
            ),
            SizedBox(height: 5),
            Divider(color: Colors.grey[300]),
            NotificationItem(
              title: 'Admin',
              subtitle: 'Your request has been approved',
              avatarPath: 'assets/images/avatar.png',
              subtitleFontSize: 14,
            ),
            SizedBox(height: 5),
            Divider(color: Colors.grey[300]),
            NotificationItem(
              title: 'Contractor',
              subtitle: 'Your OTP is 45678',
              avatarPath: 'assets/images/notifyimage.png',
              subtitleFontSize: 14,
            ),
            SizedBox(height: 5),
            Divider(color: Colors.grey[300]),
          ],
        ),
      ),
    );
  }
}
