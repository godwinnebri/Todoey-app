import 'package:flutter/material.dart';
import 'package:todoey_two/constants/color_constants.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.controller,
  }) : super(key: key);

  final String labelText;
  final String hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: Container(
        height: 58,
        child: TextFormField(
          controller: controller,
          keyboardType: TextInputType.text,
          style: const TextStyle(fontSize: 16, color: Colors.black),
          decoration: InputDecoration(
            label: Text(labelText),
            labelStyle: const TextStyle(fontSize: 16),
            filled: false,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey.withOpacity(.75)),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 18.0),
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: grey, width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: primaryColor, width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: grey.withOpacity(0.2), width: 1.0),
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
        ),
      ),
    );
  }
}
