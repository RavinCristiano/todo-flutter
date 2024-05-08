import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isDone;
  final Function(bool) onChanged;

  TaskTile({
    required this.title,
    required this.isDone,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      title: Text(title),
      leading: Checkbox(
        value: isDone,
        onChanged: (val)=>onChanged(val??false),
      ),
    );
    }
  }
