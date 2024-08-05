import 'package:chatapp/models/tasks_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/task_list.dart';
import 'addtask_screen.dart';


class TaskScreen extends StatelessWidget {
  const TaskScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Icon(Icons.list,
                    size: 30,
                    color: Colors.blueAccent,
                  ),
                ),
                SizedBox(height: 10,),
                Text('Todoey',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w700
                ),),
                Text('${Provider.of<TasksData>(context).taskCount}Tasks',
                style: TextStyle(color: Colors.white,
                fontSize: 18),)
              ],
            ),
          ),
          Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)
                  )
                ),
                child: TaskList()
              )
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            showModalBottomSheet(
              isScrollControlled: true,
              showDragHandle: true,
                context: context,
                builder: (context)=> SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom
                      ),
                        child: AddTaskScreen())));
          },
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.add, color: Colors.white,),
      ),
    );
  }
}















