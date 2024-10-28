import 'package:flutter/material.dart';
import 'package:gold_manager_update/views/const/Theme/app_color.dart';

class CustomButton extends StatefulWidget {
  String text;
  final Function onAction;
  CustomButton({Key? key, required this.text, required this.onAction,})
      : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        setState(() => _value = true);
        await Future.delayed(const Duration(seconds: 1));
        widget.onAction();
        setState(() => _value = false);
      },
      child: Container(
        decoration: BoxDecoration(
            color: AppColor.appColor, borderRadius: BorderRadius.circular(5)),
        height: 45,
        width: double.maxFinite,
        child: _value == false
            ? Center(
                child: Text(widget.text,
                    style: const TextStyle(color: Colors.white)))
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Please wait",
                      style: TextStyle(color: Colors.white)),
                  const SizedBox(width: 10),
                  Transform.scale(
                      scale: 0.4,
                      child: const CircularProgressIndicator(
                        color: Colors.white,
                      )),
                ],
              ),
      ),
    );
  }
}
