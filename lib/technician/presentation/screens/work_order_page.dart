import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../tab_bar/all_tab.dart';
import '../tab_bar/close_tab.dart';
import '../tab_bar/open_tab.dart';

class WorkOrderPage extends StatefulWidget {
  final int initialTabIndex;

  WorkOrderPage({Key? key, required this.initialTabIndex}) : super(key: key);

  @override
  _WorkOrderPageState createState() => _WorkOrderPageState();
}

class _WorkOrderPageState extends State<WorkOrderPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: widget.initialTabIndex);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Work Orders',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 80,
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
            AllWorkOrdersTab(),
            OpenWorkOrdersTab(),
            ClosedWorkOrdersTab(),
          ],
        ),
      ),
    );
  }
}
