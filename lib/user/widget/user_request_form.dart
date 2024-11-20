import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/button_wiget/button_widget.dart';
import '../../widgets/text_widgets.dart';

class UserRequestForm extends StatefulWidget {
  const UserRequestForm({super.key});

  @override
  State<UserRequestForm> createState() => _UserRequestFormState();
}

class _UserRequestFormState extends State<UserRequestForm> {
  TextEditingController description = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(30),
        child: Container(
            height: 610,
            child: Form(
                child: Column(
                  children: [
                    Textwidgets(
                      hint: 'Request Type',
                    ), // change to dropdown afterwords
                    SizedBox(height: 15),
                    TextwidgetBackIcon(
                      label: 'Date',
                      hint: 'Date',
                      iconback: Icon(Icons.calendar_month),
                      onTap: () {},
                    ),
                    SizedBox(height: 15),
                    Expanded(
                        child: Row(children: [
                          Timewidgets(
                              text: '09 : 15 : AM', textColor: Color(0xff3f3f3f)),
                          SizedBox(width: 12),
                          Text('_'),
                          SizedBox(width: 12),
                          Timewidgets(
                              text: '08 : 30 : PM', textColor: Color(0xff3f3f3f)),
                        ])),
                    SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.task_outlined),
                              SizedBox(width: 10),
                              Text('Attach Document')
                            ],
                          ),
                          SizedBox(height: 8), // Add spacing between rows if needed
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 6, horizontal: 18),
                                  decoration: BoxDecoration(
                                    color: Color(0xff262263),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    'Upload',
                                    style: GoogleFonts.roboto(color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      controller: description,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Colors.grey.shade500)),
                        hintText: 'Description',
                      ),
                      maxLines: 7,
                    ),
                    SizedBox(height: 15),
                    LongButton(
                      text: 'Submit',
                      textColor: Colors.white,
                      onPressed: () {},
                      backgroundColor: Color(0xff262263),
                    )
                  ],
                ))));
  }
}
