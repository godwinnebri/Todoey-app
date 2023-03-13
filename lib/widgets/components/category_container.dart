import 'package:flutter/material.dart';
import 'package:todoey_two/constants/color_constants.dart';

class CategoryContainer extends StatelessWidget {
  final String taskNumber;
  final String categoryName;
  final Color categoryColor;
  final int progress;

  const CategoryContainer({
    required this.taskNumber,
    required this.categoryName,
    this.categoryColor = primaryColor,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Container(
        width: 230,
        height: 130,
        padding:
            const EdgeInsets.only(top: 29, left: 18, right: 18, bottom: 18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: shadowColor.withOpacity(0.1),
              offset: const Offset(
                0.0,
                10.0,
              ),
              blurRadius: 40.0,
              spreadRadius: 0.0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("$taskNumber tasks",
                    style: const TextStyle(fontSize: 14, color: grey)),
                const SizedBox(height: 8),
                Text(categoryName,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
              ],
            ),
            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Stack(
                  children: [
                    Container(
                      height: 4,
                      decoration: BoxDecoration(
                        color: const Color(0xffF0F0F2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      height: 4,
                      width: constraints.maxWidth * (progress * 0.1),
                      decoration: BoxDecoration(
                        color: categoryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
