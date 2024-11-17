import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerTextField extends StatelessWidget {
  final TextEditingController controller;

  DatePickerTextField({required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        prefixIcon: const Icon(Icons.calendar_today),
       
        hintText: 'Date'
      ),
      readOnly: true,
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return SizedBox(
              height: 250,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                initialDateTime: DateTime.now(),
                onDateTimeChanged: (DateTime pickedDate) {
                  String formattedDate = DateFormat("dd-MM-yyyy").format(pickedDate);
                  controller.text = formattedDate;
                },
              ),
            );
          },
        );
      },
    );
  }
}
