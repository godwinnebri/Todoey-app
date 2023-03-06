class Task {
  final String name;
  final String category;

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
