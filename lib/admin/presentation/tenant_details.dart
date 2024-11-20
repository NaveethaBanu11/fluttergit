import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Tenantdetails extends StatefulWidget {
  static const String routeName = '/tenantdetails';
  const Tenantdetails({super.key});

  @override
  State<Tenantdetails> createState() => _TenantdetailsState();
}

class _TenantdetailsState extends State<Tenantdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: Icon(Icons.arrow_back)),
        title: Text(
          'Tenant Details',
          style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/admin.png'),
                  maxRadius: 70,
                )),
          ),
          Padding(
              padding: EdgeInsets.only(top: 25, left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Name',
                    style: GoogleFonts.workSans(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Leonardo DiCaprio',
                    style: GoogleFonts.workSans(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  )
                ],
              )),
          const Divider(
            height: 25,
            indent: 20,
            endIndent: 20,
          ),
          Padding(
              padding: EdgeInsets.only(top: 25, left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Joining Date',
                    style: GoogleFonts.workSans(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '01-10-2024',
                    style: GoogleFonts.workSans(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  )
                ],
              )),
          const Divider(
            height: 25,
            indent: 20,
            endIndent: 20,
          ),
          Padding(
              padding: EdgeInsets.only(top: 25, left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Number',
                    style: GoogleFonts.workSans(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '+91 9003342743',
                    style: GoogleFonts.workSans(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  )
                ],
              )),
          const Divider(
            height: 25,
            indent: 20,
            endIndent: 20,
          ),
          Padding(
              padding: EdgeInsets.only(top: 25, left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Email Id',
                    style: GoogleFonts.workSans(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'mailto:tempvisva@gmail.com',
                    style: GoogleFonts.workSans(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  )
                ],
              )),
          const Divider(
            height: 25,
            indent: 20,
            endIndent: 20,
          ),
          Padding(
              padding: EdgeInsets.only(top: 25, left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Flat No',
                    style: GoogleFonts.workSans(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'AP1-B2/743',
                    style: GoogleFonts.workSans(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  )
                ],
              )),
          const Divider(
            height: 25,
            indent: 20,
            endIndent: 20,
          ),
          Padding(
              padding: EdgeInsets.only(top: 25, left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tenant Id',
                    style: GoogleFonts.workSans(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '012',
                    style: GoogleFonts.workSans(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  )
                ],
              )),
          const Divider(
            height: 25,
            indent: 20,
            endIndent: 20,
          ),
          const SizedBox(height: 30),
          TextButton(
              onPressed: () {},
              child: Container(
                width: 370,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    shape: BoxShape.rectangle,
                    color: Color(0xff262263)),
                child: Center(
                  child: Text(
                    'Deactivate',
                    style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
