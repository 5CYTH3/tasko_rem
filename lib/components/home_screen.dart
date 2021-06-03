import 'package:flutter/material.dart';
import 'Body.dart';

class HomeScreen extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold (
			appBar: buildAppBar(),
			body: Body(), 
		);
	}
  
	AppBar buildAppBar() {
		return AppBar(
			elevation: 0,
			leading: IconButton(icon: Icon(Icons.settings_outlined), onPressed: () {

      }),
			title: Text('Flut Tasko'),

		);
	}

}