import 'package:flutter/material.dart';
import '../presentation/screens/contractor_workdetails.dart';

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
        builder: (context) => ContractorWorkDetails(
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
