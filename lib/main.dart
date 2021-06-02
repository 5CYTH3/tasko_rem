import 'package:flutter/material.dart';
import 'package:tasko_rem/components/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
    	return MaterialApp (
			home: HomeScreen(),
			theme: ThemeData(primarySwatch: Colors.red, appBarTheme: AppBarTheme(backgroundColor: Colors.black)),
			debugShowCheckedModeBanner: false,

    	);
  	}
}