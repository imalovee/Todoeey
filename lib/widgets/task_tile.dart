
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
   const TaskTile({
    super.key, required this.taskTitle,
     required this.ischecked,
     required this.checkboxCallBack,
     required this.longPressed,
  });

 final bool ischecked;
  final String taskTitle;
  final void Function(bool?) checkboxCallBack;
  final void Function() longPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressed,
      title: Text(taskTitle,
      style: TextStyle(
        decoration: ischecked ? TextDecoration.lineThrough : null
      ),),
      trailing: Checkbox(
          value: ischecked,
          onChanged: checkboxCallBack,
      ),
    );
  }
}

