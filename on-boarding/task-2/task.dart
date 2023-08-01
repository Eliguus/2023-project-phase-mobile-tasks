import 'package:intl/intl.dart';


class Task {
  String title;
  String description;
  DateTime dueDate;
  String status;

  Task(this.title, this.description, this.dueDate, {this.status = 'pending'});

  void markAsCompleted() {
    status = 'completed';
  }

  String toString() {
    return 'Title: $title\n'
        'Description: $description\n'
        'Due Date: ${DateFormat('yyyy-MM-dd').format(dueDate)}\n'
        'Status: $status';
  }
}
