import 'dart:io';

void main() {
  List<String> todoList = [];

  while (true) {
    print("\nSimple To-Do List");
    print("1. Add Task");
    print("2. View Tasks");
    print("3. Remove Task");
    print("4. Exit");
    stdout.write("Enter your choice: ");
    
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      // Add Task
      stdout.write("Enter the task: ");
      String? task = stdin.readLineSync();
      if (task != null && task.isNotEmpty) {
        todoList.add(task);
        print("Task added.");
      } else {
        print("Task cannot be empty.");
      }
    } else if (choice == '2') {
      // View Tasks
      if (todoList.isEmpty) {
        print("No tasks to display.");
      } else {
        print("\nYour To-Do List:");
        for (int i = 0; i < todoList.length; i++) {
          print("${i + 1}. ${todoList[i]}");
        }
      }
    } else if (choice == '3') {
      // Remove Task
      if (todoList.isEmpty) {
        print("No tasks to remove.");
      } else {
        print("\nYour To-Do List:");
        for (int i = 0; i < todoList.length; i++) {
          print("${i + 1}. ${todoList[i]}");
        }
        stdout.write("Enter the number of the task to remove: ");
        String? taskNumberStr = stdin.readLineSync();
        if (taskNumberStr != null && int.tryParse(taskNumberStr) != null) {
          int taskNumber = int.parse(taskNumberStr);
          if (taskNumber > 0 && taskNumber <= todoList.length) {
            todoList.removeAt(taskNumber - 1);
            print("Task removed.");
          } else {
            print("Invalid task number.");
          }
        } else {
          print("Please enter a valid number.");
        }
      }
    } else if (choice == '4') {
      // Exit
      print("Goodbye!");
      break;
    } else {
      print("Invalid choice, please try again.");
    }
  }
}
