import 'package:flutter/material.dart';

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
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child:
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 100.0),
                  width: 200.0, 
                  height: 90.0, 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), 
                    color: Colors.white,
                    boxShadow:[
                      BoxShadow(blurRadius: 6, color: Colors.black12, offset: Offset(0, 8)),
                    ]
                  ),
                  child: IconButton(icon: Icon(Icons.add), iconSize: 45,onPressed: () {},)
                )
              ),
						]
					),
				),
        Column(
          children: [
            Container(
              height: 200.0,
              width: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow:[
                  BoxShadow(blurRadius: 6, color: Colors.black12, offset: Offset(0, 8)),
                ],
                color: Colors.white
              ),
            )
          ],
        )
			],
		);
	}
}

