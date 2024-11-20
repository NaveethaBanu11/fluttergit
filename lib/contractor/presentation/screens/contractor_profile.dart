import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContractorProfilePage extends StatefulWidget {
  @override
  State<ContractorProfilePage> createState() => _ContractorProfilePageState();
}

class _ContractorProfilePageState extends State<ContractorProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w500,
            fontSize: 24,
            color: Color(0xFF000000),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80.0), // Height of the section
          child: Container(
            height: 71,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFF3A89FF), Color(0xFFC3FFD7)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              border: const Border(
                left: BorderSide(
                  color: Colors.white,
                  width: 25.0,
                ),
              ),
            ),
            padding: const EdgeInsets.fromLTRB(20.0, 12.0, 16.0, 12.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage('assets/images/avatar.png'), // Replace with your image asset
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
                      'Contractor',
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
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            // Name
            _buildProfileDetailRow(
              icon: Icons.account_circle_outlined,
              title: 'Name',
              value: 'James Bond',
            ),
            SizedBox(height: 25),
            // Role
            _buildProfileDetailRow(
              icon: Icons.key_outlined,
              title: 'Role',
              value: 'Technician',
            ),
            SizedBox(height: 25),
            // Phone Number
            _buildProfileDetailRow(
              icon: Icons.phone,
              title: 'Phone Number',
              value: '+91 9003342743',
            ),
            SizedBox(height: 25),
            // Email
            _buildProfileDetailRow(
              icon: Icons.email,
              title: 'Email Id',
              value: 'james.bond@example.com',
            ),
            SizedBox(height: 25),
            // Logout
            GestureDetector(
              onTap: () {
                // Add logout functionality here
              },
              child: Row(
                children: [
                  Icon(Icons.logout, color: Colors.black),
                  SizedBox(width: 20),
                  Text(
                    'Logout',
                    style: GoogleFonts.roboto(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method for creating profile detail rows
  Widget _buildProfileDetailRow({required IconData icon, required String title, required String value}) {
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
            Text(
              value,
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
