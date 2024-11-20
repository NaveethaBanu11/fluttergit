import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_dash/flutter_dash.dart';

class ContractorActivityTab extends StatefulWidget {
  const ContractorActivityTab({Key? key}) : super(key: key);

  @override
  State<ContractorActivityTab> createState() => _ContractorActivityTabState();
}

class _ContractorActivityTabState extends State<ContractorActivityTab> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> activities = [
      {
        'time': '1:17 PM',
        'date': '6 Feb',
        'status': 'New Booking',
        'description': 'New Booking Added By \nCustomer',
        'color': 'EA2F2F'
      },
      {
        'time': '1:21 PM',
        'date': '6 Feb',
        'status': 'Accept Booking',
        'description': 'Status Changed From \nPending To Accept',
        'color': '00968A'
      },
      {
        'time': '1:22 PM',
        'date': '6 Feb',
        'status': 'Assigned Booking',
        'description': 'Booking Has Assigned \nTo Naomie Hackett',
        'color': 'FD6922'
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: activities.length,
      itemBuilder: (context, index) {
        final activity = activities[index];
        final color = Color(int.parse("0xFF${activity['color']}"));

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (index == 0) ...[
              // Top section with #123 and custom divider
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 20,
                    alignment: Alignment.center,
                    child: Text(
                      '#123',
                      style: GoogleFonts.workSans(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF262263),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                width: 365,
                height: 1,
                color: const Color(0x8F8F8F66),
              ),
              const SizedBox(height: 20),
            ],
            // Timeline entry
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      activity['time']!,
                      style: GoogleFonts.workSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF6C757D),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      activity['date']!,
                      style: GoogleFonts.workSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF1C1F34),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                Column(
                  children: [
                    Container(
                      width: 15,
                      height: 13,
                      decoration: BoxDecoration(
                        color: color,
                        shape: BoxShape.circle,
                      ),
                    ),
                    if (index < activities.length - 1)
                      Dash(
                        direction: Axis.vertical,
                        length: 85,
                        dashLength: 4,
                        dashColor: color.withOpacity(0.5),
                      ),
                  ],
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        activity['status']!,
                        style: GoogleFonts.workSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF1C1F34),
                        ),
                      ),
                      const SizedBox(height: 7),
                      Text(
                        activity['description']!,
                        style: GoogleFonts.workSans(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF6C757D),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        );
      },
    );
  }
}
