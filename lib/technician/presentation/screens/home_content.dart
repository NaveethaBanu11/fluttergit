import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/workstatus_card.dart';
import 'list.dart';

class HomeContent extends StatelessWidget {
  final Function(int) onCardTapped;

  const HomeContent({required this.onCardTapped});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WorkStatusCards(onCardTapped: onCardTapped),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Task',
              style: GoogleFonts.workSans(
                fontSize: 26,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          WorkOrderList(),
        ],
      ),
    );
  }
}
