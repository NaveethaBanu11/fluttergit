import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkStatusCards extends StatelessWidget {
  final Function(int) onCardTapped;

  WorkStatusCards({required this.onCardTapped});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildWorkCard(
            context,
            title: 'All Works',
            color: Color(0xFF262263),
            count: 25,
            showLines: true,
            onTap: () => onCardTapped(0),
          ),
          SizedBox(width: 2),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 1),
                child: _buildWorkCard(
                  context,
                  title: 'Open Works',
                  color: Color(0xFF262263),
                  count: 25,
                  onTap: () => onCardTapped(1),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: _buildWorkCard(
                  context,
                  title: 'Closed Work',
                  color: Color(0xFF262263),
                  count: 25,
                  onTap: () => onCardTapped(2),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget _buildWorkCard(
      BuildContext context, {
        required String title,
        required Color color,
        required int count,
        bool showLines = false,
        required VoidCallback onTap,
      }) {
    // Set height and width based on card title or other logic
    double cardHeight;
    double cardWidth;

    if (title == 'All Works') {
      cardHeight = 144;
      cardWidth = 160;
    } else {
      cardHeight = 65;
      cardWidth = 180;
    }

    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: InkWell(
        onTap: onTap,
        child: Stack(
          children: [
            Container(
              height: cardHeight,
              width: cardWidth,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 12),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    title,
                    style: GoogleFonts.workSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 8,
              right: 20,
              child: Text(
                count.toString(),
                style: GoogleFonts.workSans(
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
            if (showLines)
              for (int i = 0; i < 3; i++)
                Positioned(
                  bottom: 5,
                  right: 1,
                  child: Image.asset(
                    'assets/images/vector1.png',
                    height: 87 - i * 10.0,
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
