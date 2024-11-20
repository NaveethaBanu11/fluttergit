import 'package:flutter/material.dart';
import 'package:fms/admin/presentation/tabs/all.dart';
import 'package:fms/admin/presentation/tabs/closed.dart';
import 'package:fms/admin/presentation/tabs/open.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widgets/threetab.dart';
import '../../admin_form/adminrequest_form.dart';

class Task extends StatefulWidget {
  static const String routeName = '/task';

  const Task({Key? key, this.selectedTab}) : super(key: key);

  final String? selectedTab;

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);

    if (widget.selectedTab == 'open') {
      tabController.index = 1;
    } else if (widget.selectedTab == 'closed') {
      tabController.index = 2;
    } else {
      tabController.index = 0;
    }
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  void openAdminRequestForm() {
    showModalBottomSheet(
        isScrollControlled: true,
        showDragHandle: true,
        context: context,
        builder: (context) => AdminRequestForm());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Task',
          style: GoogleFonts.roboto(fontSize: 25),
        ),
        actions: [
          IconButton(
              onPressed: openAdminRequestForm,
              icon: Icon(Icons.add_box_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.filter_alt_outlined))
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: ThreeTabWidget(
            textColor: Color(0xff262263),
            tab1: 'All',
            tab2: 'Open',
            tab3: 'Closed',
            tabController: tabController,
          ),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [AllWork(), OpenWork(), ClosesWork()],
      ),
    );
  }
}
