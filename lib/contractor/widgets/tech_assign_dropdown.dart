import 'package:flutter/material.dart';

class TechAssignDropDown extends StatefulWidget {
  const TechAssignDropDown({super.key});

  @override
  State<TechAssignDropDown> createState() => _TechAssignDropDownState();
}

class _TechAssignDropDownState extends State<TechAssignDropDown> {
  final List<String> techniciansList = [
    'John Doe',
    'Johnny Deep',
    'Hugh Jackman',
  ];
  String? selectedTechnician = 'John Doe';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedTechnician,
      isExpanded: true,
      icon: const Icon(Icons.keyboard_arrow_down, size: 30),
      underline: SizedBox.shrink(),
      onChanged: (String? newValue) {
        setState(() {
          selectedTechnician = newValue;
        });
      },
      items: techniciansList.map((technician) {
        return DropdownMenuItem<String>(
          value: technician,
          child: ListTile(
            leading: CircleAvatar(
              radius: 20,
              child: Text(technician[0]),
            ),
            title: Text('Assigned Technician'),
            subtitle: Text(technician),
          ),
        );
      }).toList(),
      selectedItemBuilder: (BuildContext context) {
        return techniciansList.map((technician) {
          return ListTile(
            leading: CircleAvatar(
              radius: 20,
              child: Text(selectedTechnician![0]),
            ),
            title: Text('Assigned Technician'),
            subtitle: Text(selectedTechnician!),
          );
        }).toList();
      },
    );
  }
}