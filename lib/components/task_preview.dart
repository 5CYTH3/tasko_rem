import 'package:flutter/material.dart';

const IconBlank = Icon(Icons.check_box_outline_blank);
const IconChecked = Icon(Icons.check_box);

String todoPreviewText = '';
String todoUserInput = '';

class TaskPreview extends StatelessWidget {
  @override
	Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 15.0),
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.16), 
              offset: Offset(0, 3),
              blurRadius: 20

            )
          ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CheckboxWidget(),
                TodoPreview()
              ],
            ),
          ],
        ),
      ),
    );
  
  }
}

class CheckboxWidget extends StatefulWidget {
  @override
  _CheckboxWidgetState createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Checkbox(
        value: checkBoxValue,
        onChanged: (bool? newValue) {
          setState(() {
            checkBoxValue = newValue!;

          });
        },
        activeColor: Colors.black,
        
      )
      
    );
  }
}

class TodoPreview extends StatefulWidget {
  const TodoPreview({ Key? key }) : super(key: key);

  @override
  _TodoPreviewState createState() => _TodoPreviewState();
}

class _TodoPreviewState extends State<TodoPreview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        todoPreviewText,
      )
    );
  }
}