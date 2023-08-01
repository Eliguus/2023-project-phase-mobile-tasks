import 'task.dart';

class TaskManager {
  List<Task> tasks = [];

  void addTask(Task task) {
    tasks.add(task);
    print('Task added.');
  }

  void viewAllTasks() {
    if (tasks.isEmpty) {
      print('No tasks found.');
    } else {
      tasks.forEach((task) => print(task.toString() + '\n'));
    }
  }

  void viewCompletedTasks() {
    List<Task> completedTasks =
        tasks.where((task) => task.status == 'completed').toList();
    if (completedTasks.isEmpty) {
      print('No completed tasks found.');
    } else {
      completedTasks.forEach((task) => print(task.toString() + '\n'));
    }
  }

  void viewPendingTasks() {
    List<Task> pendingTasks =
        tasks.where((task) => task.status == 'pending').toList();
    if (pendingTasks.isEmpty) {
      print('No pending tasks found.');
    } else {
      pendingTasks.forEach((task) => print(task.toString() + '\n'));
    }
  }

  void editTask(
      int index, String? title, String? description, DateTime? dueDate) {
    if (index < 0 || index >= tasks.length) {
      print('Invalid task index.');
    } else {
      Task task = tasks[index];
      task.title = title??task.title;
      task.description = description??task.description;
      task.dueDate = dueDate??task.dueDate;
      print('Task updated.');
    }
  }

  void markTaskAsCompleted(int index) {
    if (index < 0 || index >= tasks.length) {
      print('Invalid task index.');
    } else {
      Task task = tasks[index];
      task.markAsCompleted();
      print('Task marked as completed.');
    }
  }

  void deleteTask(int index) {
    if (index < 0 || index >= tasks.length) {
      print('Invalid task index.');
    } else {
      tasks.removeAt(index);
      print('Task deleted.');
    }
  }
}
