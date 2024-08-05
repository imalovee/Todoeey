import 'package:chatapp/models/tasks_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({
    super.key,
  });

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Add Task',
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 30
          ),
            textAlign: TextAlign.center,
          ),
          TextField(
            controller: textController,
            autofocus: true,
            autocorrect: true,
          ),
          SizedBox(height:36,),
          ElevatedButton(
              onPressed: (){
                Provider.of<TasksData>(context, listen: false).addTasks(textController.text, );
                Navigator.pop(context);
              },
              child: Text('Add'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              foregroundColor: Colors.white,
            ),
          )
        ],
      )
    );
  }
}

