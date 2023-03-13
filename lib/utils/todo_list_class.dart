//List of tasks
import 'package:todoey_two/models/task.dart';

class TodoList {
  static List<Task> schoolTasks = [];
  static List<Task> personalTasks = [];
  static List<Task> workTasks = [];
  static List<Task> businessTasks = [];

  static List<Task> allTasks = [];

  void joinAllTasks() {
    allTasks.clear();
    allTasks.addAll(schoolTasks);
    allTasks.addAll(personalTasks);
    allTasks.addAll(workTasks);
    allTasks.addAll(businessTasks);
  }
}
