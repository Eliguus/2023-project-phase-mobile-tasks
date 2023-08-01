import 'dart:io';
import 'task.dart';
import 'taskManager.dart';


void main() {
  TaskManager taskManager = TaskManager();

  while (true) {
    print('Enter a command (add, view, edit, complete, delete, or exit):');
    String? command = stdin.readLineSync();
    if (command == 'add') {
      print('Enter task title:');
      String title = stdin.readLineSync()!;
      print('Enter task description:');
      String description = stdin.readLineSync()!;
      print('Enter task due date (yyyy-mm-dd):');
      DateTime dueDate = DateTime.parse(stdin.readLineSync()!);
      Task task = Task(title, description, dueDate);
      taskManager.addTask(task);
    } else if (command == 'view') {
      print('Enter view command (all, completed, or pending):');
      String? viewCommand = stdin.readLineSync();
      if (viewCommand == 'all') {
        taskManager.viewAllTasks();
      } else if (viewCommand == 'completed') {
        taskManager.viewCompletedTasks();
      } else if (viewCommand == 'pending') {
        taskManager.viewPendingTasks();
      } else {
        print('Invalid view command.');
      }
    } else if (command == 'edit') {
      print('Enter task index:');
      int index = int.parse(stdin.readLineSync()!);
      print('Enter new task title:');
      String? title = stdin.readLineSync();
      print('Enter new task description:');
      String? description = stdin.readLineSync();
      print('Enter new task due date(or the old one) (yyyy-mm-dd):');
      DateTime dueDate = DateTime.parse(stdin.readLineSync()!);
      taskManager.editTask(index, title, description, dueDate);
    } else if (command == 'complete') {
      print('Enter task index:');
      int index = int.parse(stdin.readLineSync()!);
      taskManager.markTaskAsCompleted(index);
    } else if (command == 'delete') {
      print('Enter task index:');
      int index = int.parse(stdin.readLineSync()!);
      taskManager.deleteTask(index);
    } else if (command == 'exit') {
      print('Exiting Task Manager application.');
      break;
    } else {
      print('Invalid command.');
    }
  }
}

