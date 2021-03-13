import 'package:flutter/material.dart';
import '../constants.dart';
import 'task_checkbox.dart';

class TaskTile extends StatelessWidget {
  final isChecked;
  final String label;
  final void Function(bool) onChanged;
  final void Function() onLongPress;
  TaskTile(
      {this.label, this.isChecked = false, this.onChanged, this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity(vertical: -4),
      onTap: () {
        this.onChanged(!this.isChecked);
      },
      onLongPress: this.onLongPress,
      contentPadding: EdgeInsets.all(0.0),
      title: Text(this.label,
          style: this.isChecked
              ? kListTextStyle.copyWith(decoration: TextDecoration.lineThrough)
              : kListTextStyle),
      trailing: TaskCheckbox(
        isChecked: this.isChecked,
        onChanged: (value) {
          this.onChanged(value);
        },
      ),
    );
  }
}
