import 'package:hive/hive.dart';

@HiveType(typeId: 1)
class Task {
  final String data;
  bool completed = false;

  Task(this.data, this.completed);
}
