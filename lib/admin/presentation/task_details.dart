import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fms/admin/presentation/tabs/overview.dart';
import 'package:fms/admin/presentation/tabs/workupdate.dart';
import 'package:image_picker/image_picker.dart';

import '../../technician/presentation/tab_bar/activity_tab.dart';
import '../../widgets/threetab.dart';
import 'assigntechnician.dart';

class TaskDetails extends StatefulWidget {
  static const String routeName = '/taskDetails';
  const TaskDetails({super.key});

  @override
  State<TaskDetails> createState() => _TaskDetailsState();
}

class _TaskDetailsState extends State<TaskDetails>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  List<File> _images = [];
  final picker = ImagePicker();

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  void assignTechnicians() {
    showModalBottomSheet(
      showDragHandle: true,
      context: context,
      builder: (context) => Assigntechnician(),
    );
  }

  void getImages() async {
    final pickedImages = await picker.pickMultiImage();
    setState(() {
      if (pickedImages != null) {
        _images = pickedImages.map((image) => File(image.path)).toList();
      } else {
        print('No Images Selected');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Details'),
        actions: [
          IconButton(
            onPressed: assignTechnicians,
            icon: const Icon(Icons.person_add_alt_1_outlined),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: ThreeTabWidget(
            tabController: tabController,
            textColor: const Color(0xff262263),
            tab1: 'Overview',
            tab2: 'Activity',
            tab3: 'Message',
          ),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          OverviewTab(
            requestNo: '#321',
            beforeImages: 'assets/images/BurstPipeRepair.png',
            afterImages: 'assets/images/repaired.png',
            apartmentNo: 'AP1-B2/743',
            description:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry since the 1500s',
            name: 'Leonardo DiCaprio',
          ),
          ActivityTab(),
          WorkUpdateTab(status: 'status'),
        ],
      ),
    );
  }
}
