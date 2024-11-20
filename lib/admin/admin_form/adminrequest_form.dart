import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../../widgets/button_wiget/button_widget.dart';
import '../../widgets/dropdown/custom_dropdown.dart';
import '../../widgets/text_widgets.dart';

class AdminRequestForm extends StatefulWidget {
  const AdminRequestForm({super.key});

  @override
  State<AdminRequestForm> createState() => _AdminRequestFormState();
}

class _AdminRequestFormState extends State<AdminRequestForm> {
  DateTime? selectedDate = DateTime.now();
  TimeOfDay? startTime = TimeOfDay.now();
  TimeOfDay? endTime = TimeOfDay.now();
  final ImagePicker _picker = ImagePicker();
  List<File> _selectedImages = [];

  Future<void> datePicker() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2025),
    );
    if (pickedDate != null) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  Future<void> timePicker({required bool isStartTime}) async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: isStartTime
          ? (startTime ?? TimeOfDay.now())
          : (endTime ?? TimeOfDay.now()),
    );
    if (pickedTime != null) {
      setState(() {
        if (isStartTime) {
          startTime = pickedTime;
        } else {
          endTime = pickedTime;
        }
      });
    }
  }

  Future<void> pickImages() async {
    final List<XFile>? pickedFiles = await _picker.pickMultiImage();
    if (pickedFiles != null) {
      setState(() {
        _selectedImages = pickedFiles.map((file) => File(file.path)).toList();
      });
    }
  }

  final List<String> request = [
    'Plumping',
    'Electornic',
    'Cleaning',
  ];
  String? selectRequest;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: SizedBox(
            height: 625,
            child: Form(
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: CustomDropdown(
                        label: 'Request Type',
                        icon: Icons.cleaning_services,
                        items: request,
                        value: selectRequest,
                        onChanged: (value) {
                          setState(() {
                            selectRequest = value!;
                          });
                        },
                      )),
                  const SizedBox(height: 15),
                  GestureDetector(
                    onTap: datePicker,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              selectedDate != null
                                  ? '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}'
                                  : 'Select Date',
                              style: const TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const Icon(Icons.calendar_month, color: Colors.grey),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => timePicker(isStartTime: true),
                        child: Timewidgets(
                          text: startTime != null
                              ? startTime!.format(context)
                              : 'Start Time',
                          textColor: const Color(0xff3f3f3f),
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Text('_'),
                      const SizedBox(width: 12),
                      GestureDetector(
                        onTap: () => timePicker(isStartTime: false),
                        child: Timewidgets(
                          text: endTime != null
                              ? endTime!.format(context)
                              : 'End Time',
                          textColor: const Color(0xff3f3f3f),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white60,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Icon(Icons.task_outlined),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                'Attach Document',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: pickImages, // Pick multiple images
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 6,
                                  horizontal: 18,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xff262263),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  'Upload',
                                  style:
                                  GoogleFonts.roboto(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        // Display selected images as thumbnails
                        if (_selectedImages.isNotEmpty)
                          SizedBox(
                            height: 100,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: _selectedImages.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Stack(
                                    children: [
                                      Image.file(
                                        _selectedImages[index],
                                        width: 80,
                                        height: 80,
                                        fit: BoxFit.cover,
                                      ),
                                      Positioned(
                                        right: 0,
                                        top: 0,
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _selectedImages.removeAt(index);
                                            });
                                          },
                                          child: const Icon(
                                            Icons.cancel,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.grey.shade500),
                      ),
                      hintText: 'Description',
                    ),
                    maxLines: 7,
                  ),
                  const SizedBox(height: 15),
                  LongButton(
                    text: 'Submit',
                    textColor: Colors.white,
                    onPressed: () {},
                    backgroundColor: const Color(0xff262263),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
