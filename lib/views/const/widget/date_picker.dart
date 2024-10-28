import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomDatePicker extends StatefulWidget {
  final TextEditingController controller;

  CustomDatePicker({required this.controller});

  @override
  _CustomDatePickerState createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CupertinoButton(
          child: Text(
            DateFormat('yyyy-MM-dd').format(selectedDate),
            style: TextStyle(color: Colors.black),
          ),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: 250,
                  child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.date,
                    initialDateTime: selectedDate,
                    onDateTimeChanged: (DateTime dateTime) {
                      setState(() {
                        selectedDate = dateTime;
                        widget.controller.text =
                            DateFormat('yyyy-MM-dd').format(selectedDate);
                      });
                    },
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}
