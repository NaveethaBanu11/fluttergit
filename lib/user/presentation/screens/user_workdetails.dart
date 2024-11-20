import 'package:flutter/material.dart';
import 'package:fms/technician/presentation/tab_bar/workupdate_tab.dart';
import 'package:fms/user/presentation/tab_bar/user_activity.dart';
import 'package:fms/user/presentation/tab_bar/user_overview.dart';
import 'package:google_fonts/google_fonts.dart';


class UserWorkDetailPage extends StatefulWidget {
  final String orderNumber;
  final String workDescription;
  final String workerName;
  final String apartmentNo;
  final String date;
  final String status;

  const UserWorkDetailPage({
    Key? key,
    required this.orderNumber,
    required this.workDescription,
    required this.workerName,
    required this.apartmentNo,
    required this.date,
    required this.status,
  }) : super(key: key);

  @override
  _UserWorkDetailPageState createState() => _UserWorkDetailPageState();
}

class _UserWorkDetailPageState extends State<UserWorkDetailPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final TextEditingController _descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this); // 3 tabs
  }

  @override
  void dispose() {
    _tabController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 80,
        title: Text(
          'Work Details',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w500,
            fontSize: 23,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          // TabBar Section
          Container(
            height: 50,
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
                Tab(text: 'Overview'),
                Tab(text: 'Activity'),
                Tab(text: 'Message'),
              ],
            ),
          ),
          // TabBarView for tab content
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TabBarView(
                controller: _tabController,
                children: [
                  UserOverviewTab(),  // Overview content
                  UserActivityTab(),   // Activity content
                  WorkUpdateTab(status: widget.status),  // Work Update content
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
