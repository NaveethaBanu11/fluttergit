import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/card_widget/card_widget.dart';
import '../../../widgets/tenant_form.dart';
import '../../admin_form/tenant_form.dart';
import '../tenant_details.dart';

class Tenant extends StatefulWidget {
  static const String routeName = '/tenant';
  const Tenant({super.key});

  @override
  State<Tenant> createState() => _TenantState();
}

class _TenantState extends State<Tenant> {
  void openTenantForm() {
    showModalBottomSheet(
        showDragHandle: true,
        enableDrag: true,
        isScrollControlled: true,
        context: context,
        builder: (context) => AddTenantForm());
  }

  void openTenantFilter() {
    showModalBottomSheet(
      showDragHandle: true,
      context: context,
      builder: (context) => TenantFilterForm(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'All Tenant',
            style: GoogleFonts.roboto(fontSize: 25, color: Colors.black87),
          ),
          actions: [
            IconButton(
                onPressed: openTenantForm,
                icon: Icon(
                  Icons.add_box_outlined,
                  color: Colors.black87,
                )),
            IconButton(
                onPressed: openTenantFilter,
                icon: Icon(
                  Icons.filter_alt_outlined,
                  color: Colors.black87,
                )),
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(Tenantdetails.routeName);
                    },
                    child: TenantListCard(
                        tenantName: 'Justine Boyle', apartmentNo: 'AP1-B2/743')),
                TenantListCard(
                    tenantName: 'Lynne Gwistic', apartmentNo: 'AP1-B2/743'),
                TenantListCard(
                    tenantName: 'Stanley Knife', apartmentNo: 'AP1-B2/743'),
              ],
            )));
  }
}
