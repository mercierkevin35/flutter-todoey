import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/tasks_data.dart';
import 'task_tile.dart';
import 'task.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  // List<Task> tasks = [
  //   Task(label: 'Buy milk'),
  //   Task(label: 'Buy eggs'),
  //   Task(label: 'Buy bread')
  // ];

  @override
  Widget build(BuildContext context) {
    return Consumer<TasksData>(
      builder: (context, tasksData, child) {
        return ListView.builder(
            itemCount: tasksData.tasks.length,
            itemBuilder: (context, index) {
              Task currentTask = tasksData.tasks[index];
              return TaskTile(
                label: currentTask.label,
                isChecked: currentTask.isDone,
                onChanged: (newValue) {
                  tasksData.updateTask(currentTask);
                },
                onLongPress: () {
                  tasksData.deleteTaskAt(index);
                },
              );
            });
      },
    );
  }
}
