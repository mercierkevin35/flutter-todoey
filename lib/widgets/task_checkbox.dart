import 'package:flutter/material.dart';

class TaskCheckbox extends StatelessWidget {
  final bool isChecked;
  void Function(bool newValue) onChanged;

  TaskCheckbox({this.isChecked, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: this.isChecked,
      onChanged: this.onChanged,
      activeColor: Colors.lightBlueAccent,
    );
  }
}
