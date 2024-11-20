import 'package:flutter/material.dart';
import '../../widgets/work_order_card.dart';

class WorkOrderList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WorkOrderCard(
            orderNumber: '#321',
            workDescription: 'Electrical work',
            workerName: 'Mr. Muthu',
            apartmentNo: 'AP1-B2/743',
            date: 'Oct 02',
            status: 'New',
          ),
          WorkOrderCard(
            orderNumber: '#322',
            workDescription: 'Plumbing',
            workerName: 'Mr. John',
            apartmentNo: 'AP2-C3/120',
            date: 'Oct 03',
            status: 'In Progress',
          ),
          // Add other WorkOrderCards as needed
        ],
      ),
    );
  }
}
