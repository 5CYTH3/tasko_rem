import 'package:flutter/material.dart';
import 'package:tasko_rem/components/task_preview.dart';

class Body extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		Size size = MediaQuery.of(context).size;
		return Column(
			children: <Widget>[
				Container(
					height: size.height * 0.2 - 27,
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

  void appendNewTask() {

    
  }

}

