import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RescheduleForm extends StatefulWidget {
  const RescheduleForm({Key? key}) : super(key: key);

  @override
  _RescheduleFormState createState() => _RescheduleFormState();
}

class _RescheduleFormState extends State<RescheduleForm> {
  DateTime? _selectedDate;
  TimeOfDay? _startTime;
  TimeOfDay? _endTime;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context, bool isStartTime) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        if (isStartTime) {
          _startTime = picked;
        } else {
          _endTime = picked;
        }
      });
    }
  }

  String _formatTime(TimeOfDay? time) {
    if (time == null) return '';
    final now = DateTime.now();
    final dt = DateTime(now.year, now.month, now.day, time.hour, time.minute);
    return DateFormat.jm().format(dt);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Top Indicator (Line)
          Container(
            height: 5,
            width: 50,
            decoration: BoxDecoration(
              color: Color(0xFFEBEBEB),
              borderRadius: BorderRadius.circular(3),
            ),
          ),
          const SizedBox(height: 15.0), // Space between indicator and form

          // Date Picker
          // Date Picker
          GestureDetector(
            onTap: () => _selectDate(context),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 13.0, vertical: 12),
              width: double.infinity, // Take the full available width
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start, // Align to the left
                children: [
                  Expanded(
                    child: Text(
                      _selectedDate == null
                          ? 'Date'
                          : DateFormat.yMMMd().format(_selectedDate!),
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                  const Icon(Icons.calendar_today, color: Colors.grey),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16.0),

// Time Range Picker
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align to the left
            children: [
              // Start Time Picker
              GestureDetector(
                onTap: () => _selectTime(context, true),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    children: [
                      Text(
                        _formatTime(_startTime) != ''
                            ? _formatTime(_startTime)
                            : 'Start Time',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8), // Space between start and end time
              const Text('-'), // Separator

              // End Time Picker
              GestureDetector(
                onTap: () => _selectTime(context, false),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    children: [
                      Text(
                        _formatTime(_endTime) != ''
                            ? _formatTime(_endTime)
                            : 'End Time',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40.0),


          // Reschedule Button
          ElevatedButton(
            onPressed: () {
              // Add your rescheduling logic here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF262263), // Button color
              padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 115.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: const Text(
              'Reschedule',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
