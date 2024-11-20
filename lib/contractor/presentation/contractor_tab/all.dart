import 'package:flutter/material.dart';
import 'package:fms/contractor/navigation/navigate_tab.dart';
import '../../../technician/widgets/work_order_card.dart';

class ContractorAllWorkOrdersTab extends StatefulWidget {
  const ContractorAllWorkOrdersTab({Key? key}) : super(key: key);

  @override
  State<ContractorAllWorkOrdersTab> createState() => _ContractorAllWorkOrdersTabState();
}

class _ContractorAllWorkOrdersTabState extends State<ContractorAllWorkOrdersTab> {
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
              workerName: 'Ms. Leela',
              apartmentNo: 'AP1-B2/744',
              date: 'Oct 03',
              status: 'In Progress',
            ),
            child: WorkOrderCard(
              orderNumber: '#322',
              workDescription: 'Plumbing work',
              workerName: 'Ms. Leela',
              apartmentNo: 'AP1-B2/744',
              date: 'Oct 03',
              status: 'In Progress',
            ),
          ),
          // Add more WorkOrderCards as needed
        ],
      ),
    );
  }
}
