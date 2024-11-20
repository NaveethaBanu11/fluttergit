import 'package:flutter/material.dart';
import 'package:fms/widgets/text_widgets.dart';
import 'custom_button.dart';

class AddTenantForm extends StatefulWidget {
  const AddTenantForm({super.key});

  @override
  State<AddTenantForm> createState() => _AddTenantFormState();
}

class _AddTenantFormState extends State<AddTenantForm> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: SizedBox(
          child: Form(
              child: Column(
                children: [
                  FormCircleAvatar(backgroundImage: 'assets/images/tenant.png'),
                  SizedBox(height: 30),
                  TextFormWidget(hint: 'Full Name'),
                  SizedBox(height: 15),
                  TextFormWidget(hint: 'Phone Number'),
                  SizedBox(height: 15),
                  TextFormWidget(hint: 'Email Id'),
                  SizedBox(height: 15),
                  TextFormWidget(hint: 'Flat No'),
                  SizedBox(height: 15),
                  TextFormWidget(hint: 'Tenant Id'),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      formCancelButton(
                        text: 'Cancel',
                        textColor: Color(0xff262263),
                        backgroundColor: Colors.transparent,
                        onPressed: () {},
                      ),
                      formAddButton(
                        text: 'Add',
                        textColor: Colors.white,
                        backgroundColor: Color(0xff262263),
                        onPressed: () {},
                      )
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
