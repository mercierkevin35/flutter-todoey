class Task {
  final String label;
  bool isDone;
  Task({this.label, this.isDone = false});

  void toggleDone() {
    this.isDone = !this.isDone;
  }
}
