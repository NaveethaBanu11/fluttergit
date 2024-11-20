
import 'package:flutter/material.dart';

class DropdownWithIcon extends StatefulWidget {
  final String initialValue;
  final List<String> items;
  final ValueChanged<String?> onChanged;

  const DropdownWithIcon({
    Key? key,
    required this.initialValue,
    required this.items,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<DropdownWithIcon> createState() => _DropdownWithIconState();
}

class _DropdownWithIconState extends State<DropdownWithIcon> {
  late String dropdownValue;

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Icon(Icons.location_city, color: Color(0xFF262263)), // Left-side icon
          const SizedBox(width: 10), // Spacing between icon and dropdown
          Expanded(
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                isExpanded: true, // Makes the dropdown full width
                value: dropdownValue,
                icon: const Icon(Icons.keyboard_arrow_down_sharp, color: Color(0xFF262263)),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                  widget.onChanged(newValue);
                },
                items: widget.items.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
