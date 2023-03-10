import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:iconsax/iconsax.dart';
import 'package:todoey_two/constants/color_constants.dart';
import 'package:todoey_two/models/task.dart';
import 'package:todoey_two/screens/add_task_screen.dart';
import 'package:todoey_two/widgets/buttons/bare_button.dart';
import 'package:todoey_two/widgets/category_container.dart';
import 'package:todoey_two/widgets/tasks_list.dart';
import 'package:todoey_two/widgets/tasktile.dart';

import 'package:lottie/lottie.dart';

class TasksScreen extends StatefulWidget {
  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  //List of tasks
  List<Task> todoList = [
    // Task(name: 'Make twitter post', category: 'Work'),
    // Task(name: 'Make facebook post', category: 'Work'),
    // Task(name: 'Make instagram post', category: 'Work'),
    // Task(name: 'Make instagram post', category: 'jnuh'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskScreen(
              (newTaskTitle, newTaskCategory) {
                setState(
                  () {
                    todoList.add(
                      Task(
                        name: newTaskTitle,
                        category: newTaskCategory,
                      ),
                    );
                  },
                );
                Navigator.pop(context);
              },
            ),
          );
        },
        elevation: 0,
        highlightElevation: 0,
        backgroundColor: primaryColor,
        child: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: const BorderRadius.all(Radius.circular(50)),
            boxShadow: [
              BoxShadow(
                color: primaryColor.withOpacity(0.2),
                spreadRadius: 0,
                blurRadius: 10,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: const Icon(Iconsax.add, color: Colors.white, size: 28),
        ),
      ),
      backgroundColor: backgroundColor,

      //

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //icon and hello john
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 28, left: 28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Iconsax.category, color: grey),
                        Row(
                          children: [
                            const Icon(Iconsax.search_normal_1, color: grey),
                            const SizedBox(
                              width: 26,
                            ),
                            Stack(
                              children: [
                                const Icon(Iconsax.notification, color: grey),
                                Positioned(
                                  right: 2,
                                  child: Container(
                                    height: 9,
                                    width: 9,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.red),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      "What's up John!",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: textColor1),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "You have ${todoList.length} tasks today",
                      style: const TextStyle(fontSize: 14, color: textColor1),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),

              //categories
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Categories",
                      style: TextStyle(fontSize: 16, color: grey),
                    ),
                    BareButton(text: "New")
                  ],
                ),
              ),

              const SizedBox(height: 16),

              //categories listview
              Padding(
                padding: const EdgeInsets.only(left: 28, right: 12),
                child: SizedBox(
                  height: 130,
                  child: ListView(
                      clipBehavior: Clip.none,
                      scrollDirection: Axis.horizontal,
                      children: const [
                        CategoryContainer(
                          taskNumber: 8,
                          categoryName: "School",
                          categoryColor: accentColor,
                          progress: 140,
                        ),
                        CategoryContainer(
                          taskNumber: 3,
                          categoryName: "Personal",
                          categoryColor: primaryColor,
                        ),
                        CategoryContainer(
                          taskNumber: 12,
                          categoryName: "Work",
                          categoryColor: Colors.green,
                          progress: 120,
                        ),
                        CategoryContainer(
                          taskNumber: 5,
                          categoryName: "Business",
                          categoryColor: Colors.lightBlue,
                          progress: 120,
                        ),
                      ]),
                ),
              ),

              const SizedBox(height: 40),

              //Today's tasks
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Today's tasks",
                      style: TextStyle(fontSize: 16, color: grey),
                    ),
                    const SizedBox(height: 16),

                    //tasks list builder
                    Container(
                      child: todoList.isEmpty
                          ? SizedBox(
                              height: 300,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Lottie.network(
                                      'https://assets4.lottiefiles.com/private_files/lf30_cgfdhxgx.json',
                                      width: 300,
                                      height: 260,
                                      //fit: BoxFit.cover,
                                      //loop: true,
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      'You have not added a task',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : TasksList(
                              tasks: todoList,
                            ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
