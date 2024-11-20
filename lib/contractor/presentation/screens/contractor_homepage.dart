import 'package:flutter/material.dart';
import 'package:fms/contractor/presentation/screens/contractor_profile.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../technician/widgets/drop_down.dart';
import '../../../technician/widgets/work_order_card.dart';
import '../../../technician/widgets/workstatus_card.dart';
import '../../../widgets/bottom_navigation_bar.dart';
import '../../../widgets/custom_app_bar.dart';
import '../../../widgets/custom_drawer.dart';
import 'all_technician_page.dart';
import 'contractor_workorder.dart';

class ContractorHomePage extends StatefulWidget {
  @override
  _ContractorHomePageState createState() => _ContractorHomePageState();
}

class _ContractorHomePageState extends State<ContractorHomePage> {
  int _selectedIndex = 0;
  int _initialTabIndex = 0; // Variable to hold the initial tab index

  // Dropdown value and items for contractor-specific options
  String _dropdownValue = 'Project1';
  List<String> _dropdownItems = ['Project1', 'Project2', 'Project3'];

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
        isContractor: true, // Set to true to display the fourth icon
      ),
    );
  }

  Widget _buildPageContent() {
    switch (_selectedIndex) {
      case 1:
        return ContractorWorkOrderPage(initialTabIndex: _initialTabIndex); // WorkOrderPage for contractors
      case 2:
        return AllTechnicianPage(); // AllTechnicianPage for the settings icon
      case 3:
        return ContractorProfilePage(); // Profile page for contractors
      default:
        return _buildContractorHomeContent(); // Contractor-specific content
    }
  }

  Widget _buildContractorHomeContent() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Contractor-specific dropdown under AppBar
          DropdownWithIcon(
            initialValue: _dropdownValue,
            items: _dropdownItems,
            onChanged: (value) {
              setState(() {
                _dropdownValue = value!;
              });
            },
          ),
          WorkStatusCards(onCardTapped: _onCardTapped), // Status cards
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Active Projects',
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
                  orderNumber: '#401',
                  workDescription: 'Plumbing work',
                  workerName: 'Mr. Kumar',
                  apartmentNo: 'AP1-C3/301',
                  date: 'Oct 03',
                  status: 'New',
                ),
                WorkOrderCard(
                  orderNumber: '#402',
                  workDescription: 'HVAC installation',
                  workerName: 'Ms. Latha',
                  apartmentNo: 'AP2-B1/109',
                  date: 'Oct 04',
                  status: 'In Progress',
                ),
                WorkOrderCard(
                  orderNumber: '#403',
                  workDescription: 'Carpentry work',
                  workerName: 'Mr. Raju',
                  apartmentNo: 'AP3-D4/210',
                  date: 'Oct 05',
                  status: 'Pending',
                ),
                // Add more contractor-specific work order cards as needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}
