import 'package:flutter/material.dart';

class ThreeTabWidget extends StatefulWidget {
  String tab1;
  String tab2;
  String tab3;
  Color textColor;
  TabController tabController;
  ThreeTabWidget({
    Key? key,
    required this.tabController,
    required this.textColor,
    required this.tab1,
    required this.tab2,
    required this.tab3,
  }) : super(key: key);

  @override
  State<ThreeTabWidget> createState() => _ThreeTabWidgetState();
}

class _ThreeTabWidgetState extends State<ThreeTabWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 36,
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        decoration: BoxDecoration(
          color: const Color(0xFFF1F1F1),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 4,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: TabBar(
            controller: widget.tabController,
            indicator: const UnderlineTabIndicator(
                borderSide: BorderSide(width: 3, color: Colors.black87)),
            tabs: [
              Tab(text: widget.tab1),
              Tab(text: widget.tab2),
              Tab(text: widget.tab3),
            ]));
  }
}
