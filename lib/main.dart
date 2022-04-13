import 'package:flutter/material.dart';
import 'package:tasko_rem/components/home_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: ThemeData(
          primarySwatch: Colors.red,
          appBarTheme: AppBarTheme(backgroundColor: Colors.black)),
      debugShowCheckedModeBanner: false,
    );
  }
}
