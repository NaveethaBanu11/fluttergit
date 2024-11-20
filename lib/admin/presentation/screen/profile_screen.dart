import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widgets/dropdown/custom_dropdown.dart';
import '../../../widgets/text_widgets.dart';

class Profile extends StatefulWidget {
  static const String routeName = '/profile';
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Profile',
            style:
            GoogleFonts.roboto(fontSize: 25, fontWeight: FontWeight.w400),
          ),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
        ),
        body: Column(children: [
          ProfileCard(
              backgroundColor: Colors.green,
              child: ProfileForSideNav(
                  name: 'Leonardo DiCaprio',
                  role: 'Admin',
                  image: 'assets/images/admin.png')),
          Profilewidgets(
              icon: const Icon(
                Icons.account_circle_rounded,
                size: 30,
              ),
              title: 'Name',
              name: 'James Bond'),
          Profilewidgets(
              icon: const Icon(
                Icons.key,
                size: 30,
              ),
              title: 'Role',
              name: 'Admin'),
          Profilewidgets(
              icon: const Icon(
                Icons.phone,
                size: 30,
              ),
              title: 'Phone Number',
              name: '+91 9003342743'),
          Profilewidgets(
              icon: const Icon(
                Icons.mail_outline,
                size: 30,
              ),
              title: 'Email Id',
              name: 'mailto:john.doe@example.com'),
          Profilewidgets(
              icon: const Icon(
                Icons.logout,
                size: 30,
              ),
              title: 'Logout',
              name: ''),
        ]));
  }
}
