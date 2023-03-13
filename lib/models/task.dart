import 'package:todoey_two/utils/category_enum.dart';

class Task {
  final String name;
  final TaskCategory? category;

  bool isDone;

  Task({
    required this.name,
    required this.category,
    this.isDone = false,
  });

  void toggleDone() {
    isDone = !isDone;
  }
}
