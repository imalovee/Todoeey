
import 'package:chatapp/models/tasks.dart';
import 'package:chatapp/models/tasks_data.dart';
import 'package:chatapp/widgets/task_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<TasksData>(
      builder: (context, tasksData, child){
        return ListView.builder(
            itemCount: tasksData.taskCount,
            itemBuilder: (context, index){
              return TaskTile(
                taskTitle: tasksData.task[index].name,
                ischecked: tasksData.task[index].isDone,
                checkboxCallBack: (checkBoxState) {
                  tasksData.checkTasks(tasksData.task[index]);
                }, longPressed: () {
                  tasksData.deleteTasks(tasksData.task[index]);
              },
              );
            }
        );
      },

    );
  }
}

