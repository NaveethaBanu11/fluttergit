import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../tab_bar/activity_tab.dart';
import '../tab_bar/overview_tab.dart';
import '../tab_bar/workupdate_tab.dart';

class WorkDetailPage extends StatefulWidget {
  final String orderNumber;
  final String workDescription;
  final String workerName;
  final String apartmentNo;
  final String date;
  final String status;

  const WorkDetailPage({
    Key? key,
    required this.orderNumber,
    required this.workDescription,
    required this.workerName,
    required this.apartmentNo,
    required this.date,
    required this.status,
  }) : super(key: key);

  @override
  _WorkDetailPageState createState() => _WorkDetailPageState();
}

class _WorkDetailPageState extends State<WorkDetailPage> with SingleTickerProviderStateMixin {
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
    super.dispose();
  }

  // Function to open the bottom sheet

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
          // TabBar is placed outside of the AppBar as a separate widget
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
                Tab(text: 'Work Update'),
              ],
            ),
          ),
          // TabBarView with actual content
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TabBarView(
                controller: _tabController,
                children: [
                  OverviewTab(),  // Tab content for Overview
                  ActivityTab(),  // Tab content for Activity
                  WorkUpdateTab(status: widget.status),  // Tab content for Work Update
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
