import 'package:flutter/material.dart';
import '../../../widgets/button_wiget/button_widget.dart';
import '../../../widgets/dropdown/custom_dropdown.dart';


class Assigntechnician extends StatefulWidget {
  const Assigntechnician({super.key});

  @override
  State<Assigntechnician> createState() => _AssigntechnicianState();
}

class _AssigntechnicianState extends State<Assigntechnician> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Form(
              child: Column(
                children: [
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     ButtonWidgets(
                  //       text: 'Plumbing',
                  //       textColor: Color(0xff262263),
                  //       onPressed: () {},
                  //     ),
                  //     ButtonWidgets(
                  //       text: 'AC Repair',
                  //       textColor: Color(0xff262263),
                  //       onPressed: () {},
                  //     ),
                  //     ButtonWidgets(
                  //       text: 'Cleaning',
                  //       textColor: Color(0xff262263),
                  //       onPressed: () {},
                  //     ),
                  //     ButtonWidgets(
                  //       text: 'Painting',
                  //       textColor: Color(0xff262263),
                  //       onPressed: () {},
                  //     ),
                  //   ],
                  // ),
                  // const SizedBox(
                  //   height: 15,
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   children: [
                  //     ButtonWidgets(
                  //       text: 'Electronics',
                  //       textColor: Color(0xff262263),
                  //       onPressed: () {},
                  //     ),
                  //     SizedBox(width: 15),
                  //     ButtonWidgets(
                  //       text: 'Other',
                  //       textColor: Color(0xff262263),
                  //       onPressed: () {},
                  //     ),
                  //   ],
                  // ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  // ListTile(
                  //   leading: const CircleAvatar(
                  //     radius: 30,
                  //   ),
                  //   title: const Text('Assigned Technicains'),
                  //   subtitle: const Text('Jone Doe'),
                  //   trailing: IconButton(
                  //       onPressed: () {},
                  //       icon: const Icon(
                  //         Icons.keyboard_arrow_down,
                  //         size: 30,
                  //       )),
                  // ),
                  TechAssignDropDown(),
                  SizedBox(height: 50),
                  LongButton(
                    text: 'Assign',
                    textColor: Colors.white,
                    backgroundColor: Color(0xff262263),
                    onPressed: () {},
                  )
                ],
              )),
        ));
  }
}
