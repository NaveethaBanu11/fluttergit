import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationItem extends StatefulWidget {
  final String title;
  final String subtitle;
  final String avatarPath;
  final double subtitleFontSize;

  const NotificationItem({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.avatarPath,
    this.subtitleFontSize = 16, // Default font size for subtitle
  }) : super(key: key);

  @override
  State<NotificationItem> createState() => _NotificationItemState();
}

class _NotificationItemState extends State<NotificationItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0), // Spacing between items
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(widget.avatarPath),
            radius: 20,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                Text(
                  widget.subtitle,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: widget.subtitleFontSize,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
          // Aligning red bullet to the right side
          Container(
            margin: const EdgeInsets.only(top: 4.0), // Adjust top margin for alignment
            height: 7,
            width: 7,
            decoration: BoxDecoration(
              color: Color(0xFFDF0707), // Bullet color
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
