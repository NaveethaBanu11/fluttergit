import 'package:flutter/material.dart';
import '../../../technician/widgets/work_order_card.dart';
import '../../navigation/navigate_tab.dart';

class UserAllWorkOrdersTab extends StatefulWidget {
  const UserAllWorkOrdersTab({Key? key}) : super(key: key);

  @override
  State<UserAllWorkOrdersTab> createState() => _UserAllWorkOrdersTabState();
}

class _UserAllWorkOrdersTabState extends State<UserAllWorkOrdersTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => NavigationHelper.navigateToWorkDetail(
              context,
              orderNumber: '#321',
              workDescription: 'Electrical work',
              workerName: 'Mr. Muthu',
              apartmentNo: 'AP1-B2/743',
              date: 'Oct 02',
              status: 'New',
            ),
            child: WorkOrderCard(
              orderNumber: '#321',
              workDescription: 'Electrical work',
              workerName: 'Mr. Muthu',
              apartmentNo: 'AP1-B2/743',
              date: 'Oct 02',
              status: 'New',
            ),
          ),

          GestureDetector(
            onTap: () => NavigationHelper.navigateToWorkDetail(
              context,
              orderNumber: '#321',
              workDescription: 'Electrical work',
              workerName: 'Mr. Muthu',
              apartmentNo: 'AP1-B2/743',
              date: 'Oct 02',
              status: 'New',
            ),
            child: WorkOrderCard(
              orderNumber: '#321',
              workDescription: 'Electrical work',
              workerName: 'Mr. Muthu',
              apartmentNo: 'AP1-B2/743',
              date: 'Oct 02',
              status: 'New',
            ),
          ),
          // Additional WorkOrderCards can follow the same structure
        ],
      ),
    );
  }
}
