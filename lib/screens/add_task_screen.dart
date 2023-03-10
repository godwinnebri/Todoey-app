import 'package:flutter/material.dart';
import 'package:todoey_two/constants/color_constants.dart';
import 'package:todoey_two/widgets/buttons/primary_buttton.dart';
import 'package:todoey_two/widgets/textfields/textfield(title).dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen(this.addTaskCallback);
  final Function addTaskCallback;

  Widget build(BuildContext context) {
    String newTaskTitle = '';
    String newTaskCategory = '';

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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Container(
                  height: 54,
                  child: TextFormField(
                    // autofocus: true,
                    //focusNode: _focusNode,
                    //  onTap: _requestFocus,
                    // controller: inputController,
                    onChanged: (newText) {
                      newTaskTitle = newText;
                    },
                    keyboardType: TextInputType.text,
                    style: const TextStyle(fontSize: 16, color: Colors.black),
                    decoration: InputDecoration(
                      label: Text('Task title'),
                      labelStyle: const TextStyle(
                          // color: _focusNode.hasFocus ? primaryColor : grey,
                          fontSize: 16),

                      // prefixIcon: Icon(Icons.email),
                      filled: false,
                      //fillColor: accentColor,
                      hintText: 'Enter task title',
                      hintStyle: TextStyle(color: Colors.grey.withOpacity(.75)),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 18.0),
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
                        borderSide: BorderSide(
                            color: grey.withOpacity(0.2), width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 18),

              //description textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Container(
                  height: 54,
                  child: TextFormField(
                    // autofocus: true,
                    //focusNode: _focusNode,
                    //  onTap: _requestFocus,
                    // controller: inputController,
                    onChanged: (newText) {
                      newTaskCategory = newText;
                    },
                    keyboardType: TextInputType.text,
                    style: const TextStyle(fontSize: 16, color: Colors.black),
                    decoration: InputDecoration(
                      label: Text('Category'),
                      labelStyle: const TextStyle(
                          // color: _focusNode.hasFocus ? primaryColor : grey,
                          fontSize: 16),

                      // prefixIcon: Icon(Icons.email),
                      filled: false,
                      //fillColor: accentColor,
                      hintText: 'Enter task category',
                      hintStyle: TextStyle(color: Colors.grey.withOpacity(.75)),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 18.0),
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
                        borderSide: BorderSide(
                            color: grey.withOpacity(0.2), width: 1.0),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              PrimaryButton(
                buttonText: "Create task",
                onPressed: () {
                  //do something
                  newTaskTitle == ''
                      ? null
                      : addTaskCallback(newTaskTitle, newTaskCategory);
                },
              )
            ],
          )),
    );
  }
}
