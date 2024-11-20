
import 'package:flutter/material.dart';
import 'package:fms/user/presentation/tab_bar/user_all.dart';
import 'package:fms/user/presentation/tab_bar/user_closed.dart';
import 'package:fms/user/presentation/tab_bar/user_open.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widget/user_request_form.dart';

class UserMyrequest extends StatefulWidget {
  const UserMyrequest({super.key, required int initialTabIndex});

  @override
  State<UserMyrequest> createState() => _UserMyrequestState();
}

class _UserMyrequestState extends State<UserMyrequest> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);  // Initialize TabController with 3 tabs
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // Function to build custom tab content (notification)
  Widget _buildTabWithNotification(String text) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 4),
        Text(text),
      ],
    );
  }

  void openAdminRequestForm() {
    showModalBottomSheet(
        isScrollControlled: true,
        showDragHandle: true,
        context: context,
        builder: (context) => UserRequestForm());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Requests',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 80,
        actions: [
          IconButton(
            icon: Icon(Icons.add_box_outlined), // Preferred icon
            onPressed: openAdminRequestForm,

          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Container(
            height: 36,
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: BoxDecoration(
              color: Color(0xFFF1F1F1),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: TabBar(
              controller: _tabController,
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(width: 2.0, color: Colors.black),
              ),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(child: _buildTabWithNotification('All')),
                Tab(text: 'Open'),
                Tab(text: 'Closed'),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: TabBarView(
          controller: _tabController,
          children: [
            // You can replace these placeholders with your actual content
            UserAllWorkOrdersTab(),
            UserOpenWorkOrdersTab(),
            UserClosedWorkOrdersTab(),
          ],
        ),
      ),
    );
  }
}
