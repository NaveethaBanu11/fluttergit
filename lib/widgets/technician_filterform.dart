import 'package:flutter/material.dart';
import 'package:fms/widgets/text_widgets.dart';
import 'button_wiget/button_widget.dart';


class Techniciansfilterform extends StatefulWidget {
  const Techniciansfilterform({super.key});

  @override
  State<Techniciansfilterform> createState() => _TechniciansfilterformState();
}

class _TechniciansfilterformState extends State<Techniciansfilterform> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Form(
              child: Column(
                children: [
                  TextFormWidget(
                    hint: 'Full Name',
                  ),
                  SizedBox(height: 15),
                  TextFormWidget(hint: 'Joining Date'),
                  SizedBox(height: 15),
                  TextFormWidget(hint: 'Technicians Id'),
                  SizedBox(height: 15),
                  LongButton(
                    text: 'Find',
                    textColor: Colors.white,
                    backgroundColor: Color(0xff262263),
                    onPressed: () {},
                  )
                ],
              )),
        ));
  }
}
