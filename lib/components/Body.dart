import 'package:flutter/material.dart';

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
							  decoration: BoxDecoration(
								  color: Colors.black,
									borderRadius: BorderRadius.only(
										bottomLeft: Radius.circular(60), 
										bottomRight: Radius.circular(60)
									),
								), 
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(icon: Icon(Icons.add), color: Colors.white, onPressed: () {}),
                    IconButton(icon: Icon(Icons.radio), color: Colors.white, onPressed: () {})
                  ],
                ),
              )
						]
					),
				),
			],
		);
	}
}

