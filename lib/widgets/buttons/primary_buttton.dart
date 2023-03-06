import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:todoey_two/constants/color_constants.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  const PrimaryButton({required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(14)),
        child: TextButton(
          onPressed: onPressed,
          child: Container(
            height: 58,
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(10)),

            //
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Icon(
                //   Iconsax.add,
                //   color: Colors.white,
                // ),
                // SizedBox(width: 8),
                Text(
                  buttonText,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
