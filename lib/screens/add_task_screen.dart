import 'package:flutter/material.dart';
import 'package:todoey_flutter/constants.dart';
import 'package:todoey_flutter/widgets/tasks_list.dart';
import '../widgets/task.dart';
import 'package:provider/provider.dart';
import '../widgets/tasks_data.dart';

class AddTaskScreen extends StatelessWidget {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40.0, left: 30.0, right: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30.0,
            ),
          ),
          TextField(
            controller: this.textController,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
            ),
            autofocus: true,
            cursorColor: Colors.lightBlueAccent,
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 3.0)),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom + 20.0),
            child: FlatButton(
                color: Colors.lightBlueAccent,
                onPressed: () {
                  String value = textController.text;
                  if (value != '') {
                    context.read<TasksData>().add(Task(label: value));
                  }
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Add',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
