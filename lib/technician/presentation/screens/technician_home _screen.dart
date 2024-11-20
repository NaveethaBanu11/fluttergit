import 'package:flutter/material.dart';
import 'package:fms/technician/presentation/screens/profile_page.dart';
import 'package:fms/technician/presentation/screens/work_order_page.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widgets/bottom_navigation_bar.dart';
import '../../../widgets/custom_app_bar.dart';
import '../../../widgets/custom_drawer.dart';
import '../../widgets/drop_down.dart';
import '../../widgets/work_order_card.dart';
import '../../widgets/workstatus_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  int _initialTabIndex = 0; // Variable to hold the initial tab index

  // Dropdown value and items for demonstration
  String _dropdownValue = 'Block1';
  List<String> _dropdownItems = ['Block1', 'Block2', 'Block3'];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 1) {
        _initialTabIndex = 0; // Reset to 'All' tab when navigating to WorkOrderPage
      }
    });
  }
  // Card Click Tapped
  void _onCardTapped(int cardIndex) {
    setState(() {
      _selectedIndex = 1; // Set index to show WorkOrderPage
      _initialTabIndex = cardIndex; // Update initialTabIndex based on card tapped
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedIndex == 0 ? CustomAppBar() : null,
      endDrawer: CustomDrawer(),
      body: _buildPageContent(),
      bottomNavigationBar: BottomNavigationBarWidget(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }

  Widget _buildPageContent() {
    switch (_selectedIndex) {
      case 1:
        return WorkOrderPage(initialTabIndex: _initialTabIndex); // Display WorkOrderPage with bottom navigation
      case 2:
        return ProfilePage(); // Profile page content without AppBar
      default:
        return _buildHomeContent(); // Default page content with AppBar
    }
  }

  Widget _buildHomeContent() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Add the dropdown under the AppBar
          DropdownWithIcon(
            initialValue: _dropdownValue,
            items: _dropdownItems,
            onChanged: (value) {
              setState(() {
                _dropdownValue = value!;
              });
            },
          ),
          WorkStatusCards(
              onCardTapped: _onCardTapped
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Pending Works',
              style: GoogleFonts.workSans(
                fontSize: 26,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WorkOrderCard(
                  orderNumber: '#321',
                  workDescription: 'Electrical work',
                  workerName: 'Mr. Muthu',
                  apartmentNo: 'AP1-B2/743',
                  date: 'Oct 02',
                  status: 'New',
                ),
                WorkOrderCard(
                  orderNumber: '#321',
                  workDescription: 'Electrical work',
                  workerName: 'Mr. Muthu',
                  apartmentNo: 'AP1-B2/743',
                  date: 'Oct 02',
                  status: 'Waiting',
                ),
                WorkOrderCard(
                  orderNumber: '#321',
                  workDescription: 'Electrical work',
                  workerName: 'Mr. Muthu',
                  apartmentNo: 'AP1-B2/743',
                  date: 'Oct 02',
                  status: 'New',
                ),
                WorkOrderCard(
                  orderNumber: '#321',
                  workDescription: 'Electrical work',
                  workerName: 'Mr. Muthu',
                  apartmentNo: 'AP1-B2/743',
                  date: 'Oct 02',
                  status: 'Waiting',
                ),
                WorkOrderCard(
                  orderNumber: '#321',
                  workDescription: 'Electrical work',
                  workerName: 'Mr. Muthu',
                  apartmentNo: 'AP1-B2/743',
                  date: 'Oct 02',
                  status: 'New',
                ),
                WorkOrderCard(
                  orderNumber: '#321',
                  workDescription: 'Electrical work',
                  workerName: 'Mr. Muthu',
                  apartmentNo: 'AP1-B2/743',
                  date: 'Oct 02',
                  status: 'Waiting',
                ),
                // Add other WorkOrderCards as needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}
