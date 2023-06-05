// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class TextTile extends StatelessWidget {
  final bool isChecked;
  final String TaskTitle;
  final Function(Object?) checkboxCallback;
  final Function longPressCallback;

  TextTile({
    required this.TaskTitle,
    required this.isChecked,
    required this.checkboxCallback,
    required this.longPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //onLongPress: longPressCallback(),
      title: Text(
        TaskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.purpleAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
