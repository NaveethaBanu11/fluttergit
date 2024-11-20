import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;
  final bool isContractor; // Determines if the fourth icon should be shown

  const BottomNavigationBarWidget({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
    this.isContractor = false, // Default to false if not specified
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Define the base items
    final items = [
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: '',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.file_copy_rounded),
        label: '',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.account_circle_rounded),
        label: '',
      ),
    ];

    // Conditionally add the fourth icon if isContractor is true
    if (isContractor) {
      items.insert(
        2, // Insert at the third position
        const BottomNavigationBarItem(
          icon: Icon(Icons.person_4_outlined), // Use an appropriate icon for contractors
          label: '',
        ),
      );
    }

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed, // Keeps icons in a fixed position
      showUnselectedLabels: false,
      showSelectedLabels: false,
      currentIndex: selectedIndex,
      onTap: onItemTapped,
      unselectedItemColor: const Color(0xFF64748B),
      selectedItemColor: const Color(0xFF0F172A),
      items: items,
    );
  }
}
