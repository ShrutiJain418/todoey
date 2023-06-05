// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/text_tile.dart';
import 'package:todoey/models/tasks.dart';
import 'package:provider/provider.dart';

class TextView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final task = Provider.of<TaskData>(context).tasks[index];
        return TextTile(
          TaskTitle: task.name,
          isChecked: task.isDone,
          checkboxCallback: (checkboxState) {
            Provider.of<TaskData>(context, listen: false).updateTask(task);
          },
          longPressCallback: () {
            Provider.of<TaskData>(context, listen: false).deleteTask(task);
          },
        );
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}
