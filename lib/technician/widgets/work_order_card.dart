import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkOrderCard extends StatefulWidget {
  final String orderNumber;
  final String workDescription;
  final String workerName;
  final String apartmentNo;
  final String date;
  final String status;

  const WorkOrderCard({
    Key? key,
    required this.orderNumber,
    required this.workDescription,
    required this.workerName,
    required this.apartmentNo,
    required this.date,
    required this.status,
  }) : super(key: key);

  @override
  State<WorkOrderCard> createState() => _WorkOrderCardState();
}

class _WorkOrderCardState extends State<WorkOrderCard> {
  @override
  Widget build(BuildContext context) {
    // Determine the color of the status based on its value
    Color statusColor;
    if (widget.status.toLowerCase() == 'new') {
      statusColor = const Color(0xFF5980FF); // Blue
    } else if (widget.status.toLowerCase() == 'waiting') {
      statusColor = Colors.red; // Red for waiting
    } else if (widget.status.toLowerCase() == 'in progress') {
      statusColor = Colors.green; // Green for in progress
    } else if (widget.status.toLowerCase() == 'assigned') {
      statusColor = const Color(0xFF262263); // Blue for assigned
    } else {
      statusColor = const Color(0xFFDF0707); // Default color
    }



    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Order Number
          Text(
            widget.orderNumber,
            style: GoogleFonts.roboto(
              fontSize: 14,
              color: const Color(0xFF8F8F8F),
            ),
          ),
          const SizedBox(height: 4),

          // Work Description and Date in the same row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.workDescription,
                style: GoogleFonts.workSans(
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 8), // Added space between text and date
              Text(
                widget.date,
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF3F3F3F),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),

          // Worker Name, Apartment Number on the left and Status on the right
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    widget.workerName,
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    widget.apartmentNo,
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF8F8F8F),
                    ),
                  ),
                ],
              ),
              Text(
                widget.status,
                style: GoogleFonts.roboto(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: statusColor, // Set the dynamic color here
                ),
              ),
            ],
          ),
          const Divider(height: 30, thickness: 1),
        ],
      ),
    );
  }
}
