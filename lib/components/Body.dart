import 'package:flutter/material.dart';

class Body extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		Size size = MediaQuery.of(context).size;
		return Column(
			children: <Widget>[
				Container(
					height: size.height * 0.2,
					color: Colors.black
				)
			],
		);
	}
}