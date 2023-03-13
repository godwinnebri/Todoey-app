import 'package:flutter/material.dart';

import 'package:todoey_two/constants/color_constants.dart';
import 'package:todoey_two/utils/category_enum.dart';

class TaskTile extends StatelessWidget {
  final String taskName;
  final TaskCategory? taskCategory;
  final bool taskCompleted;
  final Function(bool?)? checkboxCallback;

  const TaskTile(
      {required this.taskName,
      required this.taskCategory,
      required this.taskCompleted,
      this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              //checkbox with theme
              Theme(
                data: Theme.of(context).copyWith(
                  primaryColor: primaryColor,
                  unselectedWidgetColor: primaryColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 10, left: 14),
                  child: Transform.scale(
                    scale: 1.5,
                    child: Checkbox(
                      activeColor: primaryColor,
                      checkColor: Colors.white,
                      // activeColor: Colors.red,
                      value: taskCompleted,
                      onChanged: checkboxCallback,

                      //checkbox shape
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              //task
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Text(
                      taskName,
                      style: const TextStyle(
                        fontSize: 16,
                        color: textColor1,
                        fontWeight: FontWeight.w500,
                        // decoration: taskCompleted
                        //     ? TextDecoration.lineThrough
                        //     : TextDecoration.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 2),

                  //subtext
                  Text(
                    taskCategory.toString(),
                    style: const TextStyle(
                        fontSize: 14,
                        color: textColor3,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: taskCompleted ? Colors.green : null,
              ),
              child: taskCompleted
                  ? const Text(
                      "Done",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  : null,
            ),
          )
        ],
      ),
    );
  }
}
