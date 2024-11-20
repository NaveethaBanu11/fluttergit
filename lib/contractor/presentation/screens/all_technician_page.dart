import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widgets/card_widget/card_widget.dart';
import '../../../widgets/technician_filterform.dart';
import '../../../widgets/tenant_form.dart';

class AllTechnicianPage extends StatefulWidget {
  static const String routeName = '/technicians';
  const AllTechnicianPage({super.key});

  @override
  State<AllTechnicianPage> createState() => _AllTechnicianPageState();
}

class _AllTechnicianPageState extends State<AllTechnicianPage> {
  void openTechniciansForm() {
    showModalBottomSheet(
        showDragHandle: true,
        enableDrag: true,
        isScrollControlled: true,
        context: context,
        builder: (context) => AddTenantForm());
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
          leading: IconButton(
              onPressed: () {
              },
              icon: Icon(Icons.arrow_back)),
          title: Text(
            'All Technicians',
            style: GoogleFonts.roboto(fontSize: 25, color: Colors.black87),
          ),
          actions: [
            IconButton(
                onPressed: openTechniciansForm,
                icon: Icon(
                  Icons.add_box_outlined,
                  color: Colors.black87,
                )),
            IconButton(
                onPressed: openTechniciansFilter,
                icon: Icon(
                  Icons.filter_alt_outlined,
                  color: Colors.black87,
                )),
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
              children: [
                TechListCard(
                    techName: 'Victoria',
                    techRole: 'plumber',
                    totalAssign: '240',
                    totalworkCompleted: '237'),
                TechListCard(
                    techName: 'Greg',
                    techRole: 'Electrician',
                    totalAssign: '240',
                    totalworkCompleted: '237'),
                TechListCard(
                    techName: 'Kristin',
                    techRole: 'Painter',
                    totalAssign: '240',
                    totalworkCompleted: '237'),
                TechListCard(
                    techName: 'Gladys',
                    techRole: 'Painter',
                    totalAssign: '240',
                    totalworkCompleted: '237'),
                TechListCard(
                    techName: 'Arlene',
                    techRole: 'Electrician',
                    totalAssign: '240',
                    totalworkCompleted: '237'),
                TechListCard(
                    techName: 'Cameron',
                    techRole: 'plumber',
                    totalAssign: '240',
                    totalworkCompleted: '237'),
              ],
            )));
  }
}
