class Task {
  bool checkBoxState;
  String title;
  Task({
    this.checkBoxState = false,
    this.title = 'this is a task',
  });
  toggleState() {
    this.checkBoxState = !this.checkBoxState;
  }
}
