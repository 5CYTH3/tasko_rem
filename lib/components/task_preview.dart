import 'package:flutter/material.dart';
import '../models/Task.dart';

const IconBlank = Icon(Icons.check_box_outline_blank);
const IconChecked = Icon(Icons.check_box);

class TaskPreview extends StatelessWidget {
  Task? task;
  TaskPreview({this.task});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.16),
                  offset: Offset(0, 3),
                  blurRadius: 20)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CheckboxWidget(checkBoxValue: task?.completed),
                Text('${task?.data}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CheckboxWidget extends StatefulWidget {
  bool? checkBoxValue = false;
  CheckboxWidget({Key? key, this.checkBoxValue}) : super(key: key);

  @override
  _CheckboxWidgetState createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Checkbox(
      value: widget.checkBoxValue,
      onChanged: (bool? newValue) {
        setState(() {
          widget.checkBoxValue = newValue!;
        });
      },
      activeColor: Colors.black,
    ));
  }
}
