import 'package:flutter/material.dart';
import 'package:fms/user/presentation/screens/user_myrequest.dart';
import 'package:fms/user/presentation/screens/user_profile.dart';
import 'package:fms/user/widget/user_card_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../technician/widgets/drop_down.dart';
import '../../../technician/widgets/work_order_card.dart';
import '../../../widgets/bottom_navigation_bar.dart';
import '../../../widgets/custom_app_bar.dart';
import '../../widget/user_custom_drawer.dart';

class UserHomePage extends StatefulWidget {
  const UserHomePage({super.key});

  @override
  State<UserHomePage> createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
  int _selectedIndex = 0;
  String _dropdownValue = 'AP1-B742';

  // Add the initial tab index for the work order page
  int _initialTabIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 1) {
        _initialTabIndex = 0; // Reset to 'All' tab when navigating to WorkOrderPage
      }
    });
  }

  // Define a method to build content based on selected index
  Widget _buildPageContent() {
    switch (_selectedIndex) {
      case 1:
        return UserMyrequest(initialTabIndex: _initialTabIndex); // Navigate to WorkOrderPage
      case 2:
        return UserProfilePage(); // Navigate to ProfilePage
      default:
        return _buildHomeContent(); // Default home content
    }
  }

  // Default Home Page Content
  Widget _buildHomeContent() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Full-width Dropdown with background color
          Container(
            width: double.infinity,
            color: const Color(0xFFF1F1F1),
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: DropdownWithIcon(
              initialValue: _dropdownValue,
              items: ['AP1-B742', 'AP1-B743', 'AP1-B744'],
              onChanged: (newValue) {
                setState(() {
                  _dropdownValue = newValue ?? _dropdownValue;
                });
              },
            ),
          ),
          const SizedBox(height: 20),
          // User card
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: UserCardWidget(
              imagePath: 'assets/images/apartment.png',
              name: 'James Bond',
              apartmentNumber: 'AP1-B742',
            ),
          ),
          const SizedBox(height: 20),
          // "My Requests" text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'My Requests',
              style: GoogleFonts.workSans(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 15),
          // Work Order Cards
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WorkOrderCard(
                  orderNumber: '#321 ',
                  workDescription: 'Fix leaking faucet',
                  workerName: 'John Doe',
                  apartmentNo: 'AP1-B742',
                  date: '12 Mar 2024',
                  status: 'New',
                ),
                WorkOrderCard(
                  orderNumber: '#321 ',
                  workDescription: 'Replace kitchen light',
                  workerName: 'Jane Smith',
                  apartmentNo: 'AP1-B743',
                  date: '14 Mar 2024',
                  status: 'In Progress',
                ),
                WorkOrderCard(
                  orderNumber: '#321 ',
                  workDescription: 'Repair air conditioning',
                  workerName: 'Alice Johnson',
                  apartmentNo: 'AP1-B744',
                  date: '15 Mar 2024',
                  status: 'Waiting',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedIndex == 0 ? CustomAppBar() : null, // Show app bar only for home page
      endDrawer: UserCustomDrawer(),
      bottomNavigationBar: BottomNavigationBarWidget(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
      body: _buildPageContent(), // Display the content based on selected index
    );
  }
}
