import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:todoey_two/widgets/tasktile.dart';

class TasksList extends StatefulWidget {
  final List tasks;
  const TasksList({
    super.key,
    required this.tasks,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return SizedBox(
          child: Dismissible(
            key: UniqueKey(),
            onDismissed: (direction) {
              setState(() {
                widget.tasks.removeAt(index);
              });
            },
            background: Container(
              child: Lottie.network(
                'https://assets9.lottiefiles.com/packages/lf20_khh1znj5.json',
                width: 16,
                height: 16,
              ),
            ),
            child: TaskTile(
              taskName: widget.tasks[index].name,
              taskCategory: widget.tasks[index].category,
              taskCompleted: widget.tasks[index].isDone,
              checkboxCallback: (checkboxState) {
                setState(() {
                  widget.tasks[index].toggleDone();
                });
              },
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 14,
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