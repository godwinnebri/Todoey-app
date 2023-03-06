import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:todoey_two/constants/color_constants.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({
    Key? key,
    this.width = 20.0,
    this.height = 20.0,
    this.color = primaryColor,
    this.iconSize = 14,
    this.onChanged,
    this.checkColor = primaryColor,
  }) : super(key: key);

  final double width;
  final double height;
  final Color? color;
  // Now you can set the checkmark size of your own
  final double? iconSize;
  final Color? checkColor;
  final Function(bool?)? onChanged;

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() => isChecked = !isChecked);
        widget.onChanged?.call(isChecked);
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          border: Border.all(
            color: widget.color ?? primaryColor,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: isChecked
            ? Icon(
                Icons.check,
                size: widget.iconSize,
                color: widget.checkColor,
              )
            : null,
      ),
    );
  }
}
