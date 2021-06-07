import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasko_rem/components/task_preview.dart';

class Body extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		Size size = MediaQuery.of(context).size;
		return Column(
			children: <Widget>[
				Container(
					height: size.height * 0.2,
					child: Stack(
						children: <Widget>[
							Container(
                height: size.height * 0.2 - 27,
							  decoration: BoxDecoration(
								  color: Colors.black,
									borderRadius: BorderRadius.only(
										bottomLeft: Radius.circular(60), 
										bottomRight: Radius.circular(60)
									),
								),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 70,
                  margin: EdgeInsets.symmetric(horizontal: 170),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [BoxShadow(
                     offset: Offset(0, 2),
                     blurRadius: 20,
                     color: Colors.black.withOpacity(0.2)
                    )]
                  ),
                  child: Center(
                    child: IconButton(
                      icon: Icon(Icons.add),
                      color: Colors.black,
                      iconSize: 40,
                      onPressed: () => createAlertDialog(context),
                    ),
                  ),
                ),
              ),
						]
					),
				),

        Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              TaskPreview(),
              TaskPreview()

            ],
          ),
        )
			],
		);
	}

  TextEditingController customController = TextEditingController();

  createAlertDialog(BuildContext context) {
    return showDialog(context: context, builder: (context) {
      return AlertDialog(
        title: Text('Please enter your task : '),
        content: TextField(
          controller: customController
        ),
        actions: <Widget>[
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pop(customController.text.toString());
            },
            color: Colors.black,
            textColor: Colors.white,
            elevation: 5.0,
            child: Text('Create it !'),
          )
        ]
      );
    });
  }
}

/*
child: IconButton(
  icon: Icon(Icons.add),
  iconSize: 25,
  color: Colors.white,
  onPressed: null
),
*/