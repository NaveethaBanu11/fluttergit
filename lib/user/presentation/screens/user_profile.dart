import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserProfilePage extends StatefulWidget {
  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w500,
            fontSize: 24,
            color: Colors.black,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF36454F),
                border: Border(
                  left: BorderSide(
                    color: Colors.white,
                    width: 30.0,
                  ),
                ),
              ),
              padding: const EdgeInsets.fromLTRB(20.0, 12.0, 16.0, 12.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage('assets/images/avatar.png'),
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'James Bond',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'User',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildProfileRow(Icons.account_circle_outlined, 'Name', 'James Bond'),
            SizedBox(height: 25),
            buildProfileRow(Icons.key_outlined, 'Role', 'User'),
            SizedBox(height: 25),
            buildProfileRow(Icons.perm_contact_cal_outlined, 'Address', '5/30A'),
            SizedBox(height: 25),
            buildProfileRow(Icons.phone, 'Phone Number', '+91 9003342743'),
            SizedBox(height: 25),
            buildProfileRow(Icons.email, 'Email', 'james.bond@example.com'),
            SizedBox(height: 25),
            buildProfileRow(Icons.contact_support_outlined, 'Support', ''),
            SizedBox(height: 25),
            GestureDetector(
              onTap: () {
                // Add logout functionality here
              },
              child: buildProfileRow(Icons.logout, 'Logout', ''),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProfileRow(IconData icon, String title, String subtitle) {
    return Row(
      children: [
        Icon(icon, color: Colors.black),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.roboto(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            if (subtitle.isNotEmpty)
              Text(
                subtitle,
                style: GoogleFonts.roboto(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
          ],
        ),
      ],
    );
  }
}
