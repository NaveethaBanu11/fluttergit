import 'package:flutter/material.dart';
import 'package:fms/admin/presentation/admin_homepage.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../dropdown/custom_dropdown.dart';

class AdminSideNavbar extends StatelessWidget {
  const AdminSideNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: AdminmenuItem(context),
    );
  }

  Widget AdminmenuItem(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: ListView(
        children: [
          ProfileForSideNav(
              name: 'Leonardo DiCapri',
              role: 'Admin',
              image: 'assets/images/admin.png'),
          const SizedBox(height: 30),
          ListTile(
            title: Text(
              'Switch Building',
              style: GoogleFonts.roboto(
                fontSize: 16,
                color: Colors.black87,
                fontWeight: FontWeight.w400,
              ),
            ),
            onTap: () {
              GoRouter.of(context).push(AdminHomepage.routeName);
              // context.go('/home');
            },
          ),
          ListTile(
            title: Text(
              'Technicians Management',
              style: GoogleFonts.roboto(
                fontSize: 16,
                color: Colors.black87,
                fontWeight: FontWeight.w400,
              ),
            ),
            onTap: () {
              context.go('/technicians');
            },
          ),
          ListTile(
            title: Text(
              'Contractor Management',
              style: GoogleFonts.roboto(
                fontSize: 16,
                color: Colors.black87,
                fontWeight: FontWeight.w400,
              ),
            ),
            onTap: () {
              context.go('/contractor');
            },
          ),
          const SizedBox(height: 10),
          const Divider(height: 20),
          ListTile(
            title: Text(
              'Logout',
              style: GoogleFonts.roboto(
                fontSize: 16,
                color: Colors.black87,
                fontWeight: FontWeight.w400,
              ),
            ),
            onTap: () {
              // Add your logout functionality here
            },
          ),
        ],
      ),
    );
  }
}
