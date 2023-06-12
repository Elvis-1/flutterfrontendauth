import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget(
      {super.key,
      this.obscureText = false,
      required this.hintText,
      required this.icon,
      required this.controller});
  String hintText;
  IconData icon;
  bool obscureText;
  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10, right: 15, left: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(1, 1),
              spreadRadius: 1,
              blurRadius: 3,
              color: Colors.grey.withOpacity(0.3),
            )
          ]),
      child: TextField(
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              color: Colors.black,
            ),
            hintText: hintText,
            // focused border
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  width: 1.0,
                  color: Colors.grey.withOpacity(0.2),
                )),
            // enabledBorder
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  width: 1.0,
                  color: Colors.white,
                )),
            // border
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
      ),
    );
  }
}
