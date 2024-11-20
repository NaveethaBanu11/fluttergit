import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class  UserCustomDrawer extends StatefulWidget {
  @override
  State<UserCustomDrawer> createState() => _UserCustomDrawerState();
}

class _UserCustomDrawerState extends State<UserCustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 45.0, horizontal: 25.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'James Bond',
                        style: GoogleFonts.roboto(fontSize:13,fontWeight: FontWeight.w500,color: Color(0xFF222222)),
                      ),
                      Text(
                        'Admin',
                        style:GoogleFonts.roboto(fontSize: 11,fontWeight: FontWeight.w400,color: Color(0xFF8F8F8F)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 1.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 1.0),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    'Switch Flat',
                    style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w400,color: Color(0xFF222222)),
                  ),
                  onTap: () {},
                ),
                SizedBox(height: 15.0), // Add space between list items
                ListTile(
                  title: Text(
                    'Report Abuse',
                   style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w400,color: Color(0xFF222222)),
                  ),
                  onTap: () {},
                ),
                // SizedBox(height: 15.0), // Add space between list items
                // ListTile(
                //   title: Text(
                //     'Contact Us',
                //     style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w400,color: Color(0xFF222222)),
                //   ),
                //   onTap: () {},
                // ),
                Divider(),
                SizedBox(height: 15.0), // Add space before logout
                ListTile(
                  title: Text(
                    'Logout',
                    style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w400,color: Color(0xFF222222)),
                  ),
                  onTap: () {
                    // Handle logout action
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
