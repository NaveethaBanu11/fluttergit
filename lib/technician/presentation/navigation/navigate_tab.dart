import 'package:flutter/material.dart';
import '../screens/work_detail_page.dart';

class NavigationHelper {
  static void navigateToWorkDetail(
      BuildContext context, {
        required String orderNumber,
        required String workDescription,
        required String workerName,
        required String apartmentNo,
        required String date,
        required String status,
      }) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WorkDetailPage(
          orderNumber: orderNumber,
          workDescription: workDescription,
          workerName: workerName,
          apartmentNo: apartmentNo,
          date: date,
          status: status,
        ),
      ),
    );
  }
}
