import 'package:flutter/material.dart';
import '../../../technician/presentation/navigation/navigate_tab.dart';
import '../../../technician/widgets/work_order_card.dart';

class  UserOpenWorkOrdersTab extends StatelessWidget {
  const UserOpenWorkOrdersTab({Key? key}) : super(key: key);

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
              orderNumber: '#322',
              workDescription: 'Plumbing work',
              workerName: 'Mr. Raj',
              apartmentNo: 'AP2-C3/812',
              date: 'Oct 05',
              status: 'In Progress',
            ),
            child: WorkOrderCard(
              orderNumber: '#322',
              workDescription: 'Plumbing work',
              workerName: 'Mr. Raj',
              apartmentNo: 'AP2-C3/812',
              date: 'Oct 05',
              status: 'In Progress',
            ),
          ),
          GestureDetector(
            onTap: () => NavigationHelper.navigateToWorkDetail(
              context,
              orderNumber: '#323',
              workDescription: 'Painting work',
              workerName: 'Ms. Anu',
              apartmentNo: 'AP3-D4/912',
              date: 'Oct 08',
              status: 'New',
            ),
            child: WorkOrderCard(
              orderNumber: '#323',
              workDescription: 'Painting work',
              workerName: 'Ms. Anu',
              apartmentNo: 'AP3-D4/912',
              date: 'Oct 08',
              status: 'New',
            ),
          ),
          GestureDetector(
            onTap: () => NavigationHelper.navigateToWorkDetail(
              context,
              orderNumber: '#324',
              workDescription: 'Carpentry work',
              workerName: 'Mr. Ravi',
              apartmentNo: 'AP4-E5/102',
              date: 'Oct 12',
              status: 'Pending',
            ),
            child: WorkOrderCard(
              orderNumber: '#324',
              workDescription: 'Carpentry work',
              workerName: 'Mr. Ravi',
              apartmentNo: 'AP4-E5/102',
              date: 'Oct 12',
              status: 'Pending',
            ),
          ),
        ],
      ),
    );
  }
}
