import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final String label;
  final IconData icon;
  final List<String> items;
  final String? value;
  final ValueChanged<String?> onChanged;

  const CustomDropdown({
    super.key,
    required this.label,
    required this.icon,
    required this.items,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: value,
      items: items.map((item) {
        return DropdownMenuItem(
          value: item,
          child: Text(item),
        );
      }).toList(),
      icon: const SizedBox.shrink(),
      onChanged: onChanged,
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        hintText: label,
        suffixIcon: const Icon(Icons.keyboard_arrow_down),
        border: InputBorder.none,
      ),
    );
  }
}

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
            title: const Text('Assigned Technician'),
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

class ProfileForSideNav extends StatefulWidget {
  final String name;
  final String role;
  final String image;
  ProfileForSideNav(
      {super.key, required this.name, required this.role, required this.image});

  @override
  State<ProfileForSideNav> createState() => _ProfileForSideNavState();
}

class _ProfileForSideNavState extends State<ProfileForSideNav> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(widget.image),
          radius: 30,
        ),
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Text(
              widget.name,
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              widget.role,
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ],
    );
  }
}
