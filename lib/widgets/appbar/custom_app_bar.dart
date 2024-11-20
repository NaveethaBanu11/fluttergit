import 'package:flutter/material.dart';

import '../../technician/presentation/notification/notification_screen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight); // Define the AppBar height

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          'assets/images/fms_logo.png', // Left side image
          fit: BoxFit.contain,
        ),
      ),
      title: Text(
        'FMS',
        style: TextStyle(
          color: Color(0xFF262263),
          fontWeight: FontWeight.w600,
          fontSize: 25,
        ), // Customize the text color
      ),
      iconTheme: IconThemeData(color: Colors.black), // Icon theme for actions
      actions: [
        // Notification icon with a badge
        Stack(
          children: [
            IconButton(
              icon: Icon(Icons.notifications, color: Color(0xFF64748B)),
              onPressed: () {
                // Navigate to NotificationScreen when the notification icon is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationScreen(), // Add parentheses here
                  ),
                );
              },
            ),
            // Display the notification count badge
            Positioned(
              right: 5,
              top: 9,
              child: Container(
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: Color(0xFF262263),
                  borderRadius: BorderRadius.circular(15),
                ),
                constraints: BoxConstraints(
                  minWidth: 17,
                  minHeight: 17,
                ),
                child: Text(
                  '2', // Example notification count
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 9,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        // Drawer icon moved to the right side
        Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.segment_outlined, color: Color(0xFF323232)), // Drawer icon
              onPressed: () {
                Scaffold.of(context).openEndDrawer(); // Open the end drawer
              },
            );
          },
        ),
      ],
    );
  }
}
