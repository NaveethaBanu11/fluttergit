import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;
import '../../technician/presentation/notification/notification_screen.dart';
import '../../widgets/appbar/admin_sidenav.dart';
import '../../widgets/card_widget/card_widget.dart';
import '../../widgets/dropdown/custom_dropdown.dart';

class AdminHomepage extends StatefulWidget {
  static const String routeName = '/home';
  const AdminHomepage({super.key});

  @override
  State<AdminHomepage> createState() => _AdminHomepageState();
}

class _AdminHomepageState extends State<AdminHomepage> {
  final List<String> buildingList = [
    'Building One',
    'Building Two',
    'Building Three',
  ];
  String? selectBuilding;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 40,
          leading: Image.asset(
            'assets/images/fms_logo.png',
          ),
          titleSpacing: 20,
          title: Text(
            'FMS',
            style: GoogleFonts.abyssinicaSil(
                textStyle:
                const TextStyle(fontSize: 25, fontWeight: FontWeight.w400)),
          ),
          actions: [
            badges.Badge(
              position: badges.BadgePosition.topEnd(top: 2, end: 2),
              badgeContent: const Text(
                '2',
                style: TextStyle(color: Colors.white),
              ),
              badgeStyle: const badges.BadgeStyle(
                borderSide: BorderSide(color: Color(0xff262263)),
                badgeColor: Color(0xff262263),
              ),
              child: IconButton(
                onPressed: () {
                  GoRouter.of(context).pushNamed(NotificationScreen.routeName);
                },
                icon: Icon(
                  Icons.notifications,
                  size: 25,
                ),
                color: Color(0xff64748B),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Builder(
              builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  padding: const EdgeInsets.only(right: 25),
                  icon: const Icon(
                    Icons.segment,
                    color: Color(0xff323232),
                  )),
            )
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: CustomDropdown(
              label: 'Select a Building',
              icon: Icons.apartment,
              items: buildingList,
              value: selectBuilding,
              onChanged: (value) {
                setState(() {
                  selectBuilding = value!;
                });
              },
            ),
          ),
        ),
        endDrawer: const AdminSideNavbar(),
        endDrawerEnableOpenDragGesture: true,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustoumCardImage(
                    text: 'Total Floor',
                    textColor: Colors.white,
                    total: '12',
                    backgroundImage: 'assets/images/building.png',
                  ),
                  CustoumCard(
                    text: 'Open Work',
                    textColor: Colors.white,
                    backgroundColor: const Color(0xff262263),
                    total: '25',
                    onPressed: () => GoRouter.of(context).go('/task?tab=open'),
                    // GoRouter.of(context).push(Task.routeName),
                  )
                ],
              ),
              Row(
                children: [
                  CustoumCard(
                    text: 'All Work',
                    textColor: Colors.white,
                    backgroundColor: Color(0xff262263),
                    total: '12',
                    onPressed: () => GoRouter.of(context).go('/task?tab=all'),
                    // GoRouter.of(context).push(Task.routeName),
                  ),
                  CustoumCard(
                    text: 'Closed Work',
                    textColor: Colors.white,
                    backgroundColor: Color(0xff262263),
                    total: '25',
                    onPressed: () =>
                        GoRouter.of(context).go('/task?tab=closed'),
                    // GoRouter.of(context).push(Task.routeName),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 20,
                ),
                child: Text(
                  'Pending Work',
                  style: GoogleFonts.workSans(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              CardList(
                requestNo: '#321',
                work: 'Electrcial Work',
                name: 'Mr Muthu',
                apartmentNo: ' AP1-B2/743',
                status: 'New',
                date: 'Oct 20',
                onPressed: () {},
              ),
              CardList(
                requestNo: '#321',
                work: 'Plumbing Work',
                name: 'Mr Muthu',
                apartmentNo: ' AP1-B2/743',
                status: 'New',
                date: 'Oct 20',
                onPressed: () {},
              ),
              CardList(
                requestNo: '#321',
                work: 'Painting Work',
                name: 'Mr Muthu',
                apartmentNo: ' AP1-B2/743',
                status: 'New',
                date: 'Oct 20',
                onPressed: () {},
              ),
              CardList(
                requestNo: '#321',
                work: 'Ac Repair Work',
                name: 'Mr Muthu',
                apartmentNo: ' AP1-B2/743',
                status: 'New',
                date: 'Oct 20',
                onPressed: () {},
              ),
            ],
          ),
        ));
  }
}
