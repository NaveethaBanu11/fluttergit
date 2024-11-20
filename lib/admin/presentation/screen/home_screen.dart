import 'package:flutter/material.dart';
import 'package:fms/admin/presentation/screen/profile_screen.dart';
import 'package:fms/admin/presentation/screen/task_screen.dart';
import 'package:fms/admin/presentation/screen/tenant_screen.dart';
import '../../../widgets/bottom_navigation_bar.dart';
import '../admin_homepage.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName = '/homeScreen';

  HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [AdminHomepage(), Task(), Tenant(), Profile()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
