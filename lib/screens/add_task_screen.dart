import 'package:flutter/material.dart';
import 'package:todoey_two/constants/color_constants.dart';
import 'package:todoey_two/utils/category_enum.dart';
import 'package:todoey_two/widgets/buttons/primary_buttton.dart';
import 'package:todoey_two/widgets/textfield.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen(this.addTaskCallback, {super.key});
  final Function addTaskCallback;

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final TextEditingController titleController = TextEditingController();

  TaskCategory? selectedCategory = TaskCategory.values.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff727375),
      child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24), topRight: Radius.circular(24)),
          ),

          //

          child: Column(
            children: [
              const SizedBox(height: 15),
              Container(
                height: 5,
                width: 40,
                decoration: BoxDecoration(
                  color: grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Add task",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: textColor1),
              ),
              const SizedBox(height: 24),

              //tasktitle textfield
              TextFieldWidget(
                labelText: 'Task title',
                hintText: 'Enter task title',
                controller: titleController,
              ),

              const SizedBox(height: 18),

              LayoutBuilder(
                builder: (context, constraints) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    margin: const EdgeInsets.symmetric(horizontal: 28),
                    width: constraints.maxWidth,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.withOpacity(0.2)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: DropdownButton<TaskCategory>(
                      value: selectedCategory,
                      onChanged: (TaskCategory? newValue) {
                        setState(() {
                          selectedCategory = newValue;
                        });
                      },
                      dropdownColor: Colors.white,
                      icon: Padding(
                        padding: EdgeInsets.only(
                          left: constraints.maxWidth * 0.55,
                        ), // set padding here
                        child: const Icon(Icons.arrow_drop_down),
                      ),
                      iconSize: 36,
                      elevation: 0,
                      style: const TextStyle(color: Colors.black),
                      underline: Container(
                        height: 0,
                      ),
                      itemHeight: 58,
                      items: TaskCategory.values.map((category) {
                        return DropdownMenuItem<TaskCategory>(
                          value: category,
                          child: Text(category.toString()),
                        );
                      }).toList(),
                    ),
                  );
                },
              ),

              const SizedBox(height: 16),

              PrimaryButton(
                buttonText: "Create task",
                onPressed: () {
                  //do something

                  titleController.text == ''
                      ? null
                      : widget.addTaskCallback(
                          titleController.text, selectedCategory);
                },
              )
            ],
          )),
    );
  }
}
