import 'package:flutter/material.dart';
import '../../widgets/button_wiget/button_widget.dart';
import '../../widgets/text_widgets.dart';


class TenantFilterForm extends StatefulWidget {
  const TenantFilterForm({super.key});

  @override
  State<TenantFilterForm> createState() => _TenantFilterFormState();
}

class _TenantFilterFormState extends State<TenantFilterForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 230,
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Form(
              child: Column(
                children: [
                  TextFormWidget(hint: 'Full Name'),
                  SizedBox(height: 15),
                  TextFormBackIcon(
                      hint: 'Joining Date', icon: Icon(Icons.calendar_month)),
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
