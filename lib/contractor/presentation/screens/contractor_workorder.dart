import 'package:flutter/material.dart';
import 'package:fms/contractor/presentation/contractor_tab/all.dart';
import 'package:fms/contractor/presentation/contractor_tab/closed.dart';
import 'package:fms/contractor/presentation/contractor_tab/open.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widgets/technician_filterform.dart';


class ContractorWorkOrderPage extends StatefulWidget {
  final int initialTabIndex;

  ContractorWorkOrderPage({Key? key, required this.initialTabIndex}) : super(key: key);

  @override
  _ContractorWorkOrderPageState createState() => _ContractorWorkOrderPageState();
}

class _ContractorWorkOrderPageState extends State<ContractorWorkOrderPage> with SingleTickerProviderStateMixin {
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

  void openTechniciansFilter() {
    showModalBottomSheet(
      showDragHandle: true,
      context: context,
      builder: (context) => Techniciansfilterform(),
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
        actions: [
          // IconButton(
          //   icon: Icon(Icons.add_box_outlined, color: Colors.black),
          //   onPressed: openTechniciansFilter,
          // ),

          IconButton(
            icon: Icon(Icons.filter_alt_outlined, color: Colors.black),
            onPressed: openTechniciansFilter,
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
            ContractorAllWorkOrdersTab(),
            ContractorOpenWorkOrdersTab(),
            ContractorClosedWorkOrdersTab(),
          ],
        ),
      ),
    );
  }
}
