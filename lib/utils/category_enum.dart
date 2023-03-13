import 'package:todoey_two/models/task.dart';
import 'package:todoey_two/utils/todo_list_class.dart';

enum TaskCategory {
  school,
  personal,
  work,
  business;

  @override
  String toString() => toTitleCase(name);
  static void addToTaskCategory(String name, TaskCategory category) {
    switch (category) {
      case TaskCategory.school:
        return TodoList.schoolTasks.add(Task(
          name: name,
          category: category,
        ));

      case TaskCategory.personal:
        return TodoList.personalTasks.add(Task(
          name: name,
          category: category,
        ));

      case TaskCategory.work:
        return TodoList.workTasks.add(Task(
          name: name,
          category: category,
        ));

      case TaskCategory.business:
        return TodoList.businessTasks.add(Task(
          name: name,
          category: category,
        ));

      default:
        return;
    }
  }
}

String toTitleCase(String name) => name[0].toUpperCase() + name.substring(1);
