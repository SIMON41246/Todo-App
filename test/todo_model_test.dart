import 'package:flutter_test/flutter_test.dart';
import 'package:tod0_list/data/todo_model.dart';

void main() {
  group('Todo Model Tests', () {
    test('Should create Todo with default Pending status', () {
      final todo = Todo(
        title: 'Test Todo',
        content: 'Test Content',
        startDate: DateTime.now(),
      );

      expect(todo.status, TodoStatus.Pending);
      expect(todo.title, 'Test Todo');
      expect(todo.content, 'Test Content');
      expect(todo.finishDate, isNull);
    });

    test('Should properly copy with new values', () {
      final original = Todo(
        title: 'Original',
        content: 'Content',
        startDate: DateTime.now(),
      );

      final copied = original.copyWith(
        title: 'New Title',
        status: TodoStatus.Done,
        finishDate: DateTime.now(),
      );

      expect(copied.title, 'New Title');
      expect(copied.status, TodoStatus.Done);
      expect(copied.finishDate, isNotNull);
      expect(copied.content, original.content);
    });

    test('Should maintain same values when copying without changes', () {
      final original = Todo(
        title: 'Test',
        content: 'Content',
        startDate: DateTime.now(),
      );

      final copied = original.copyWith();

      expect(copied.title, original.title);
      expect(copied.status, original.status);
      expect(copied.content, original.content);
    });
  });
}