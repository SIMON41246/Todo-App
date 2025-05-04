import 'package:hive/hive.dart';

part 'todo_model.g.dart';

@HiveType(typeId: 0)
class Todo {
  @HiveField(0)
  final String title;

  @HiveField(1)
  final String content;

  @HiveField(2, defaultValue: null)
  final DateTime? finishDate;

  @HiveField(3)
  final DateTime startDate;

  @HiveField(4)
  final TodoStatus status;

  @HiveField(5)
  int? key;

  Todo({
    required this.title,
    required this.content,
    this.finishDate,
    DateTime? startDate,
    this.status = TodoStatus.Pending,
    this.key,
  }) : startDate = startDate ?? DateTime.now();

  Todo copyWith({
    String? title,
    String? content,
    DateTime? finishDate,
    DateTime? startDate,
    TodoStatus? status,
    int? key,
  }) {
    return Todo(
      title: title ?? this.title,
      content: content ?? this.content,
      finishDate: finishDate ?? this.finishDate,
      startDate: startDate ?? this.startDate,
      status: status ?? this.status,
      key: key ?? this.key,
    );
  }
}

@HiveType(typeId: 1)
enum TodoStatus {
  @HiveField(0)
  Pending,

  @HiveField(1)
  Done,
}