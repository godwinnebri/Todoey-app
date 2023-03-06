import 'package:flutter/material.dart';
import 'package:todoey_two/widgets/tasktile.dart';

class TasksList extends StatefulWidget {
  final List tasks;
  const TasksList({required this.tasks});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
            taskName: widget.tasks[index].name,
            taskCategory: widget.tasks[index].category,
            taskCompleted: widget.tasks[index].isDone,
            checkboxCallback: (checkboxState) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            }
            //onChanged: (value) => checkboxChanged(value, index),
            );
      },
    );
  }
}


//  //this method is triggered when checkbox is tapped
//   void checkboxChanged(bool? value, int index) {
//     setState(() {
//       todoList[index][2] = !todoList[index][2];
//     });
//   }