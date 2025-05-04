import 'package:hive/hive.dart';
import 'todo_model.dart';

class TodoRepository {
  static const String _boxName = 'todos';

  Future<Box<Todo>> get _box async => await Hive.openBox<Todo>(_boxName);

  Future<int> addTodo(Todo todo) async {
    final box = await _box;
    final key = await box.add(todo);
    todo.key = key;
    await box.put(key, todo);
    return key;
  }

  Future<void> deleteTodo(int key) async {
    final box = await _box;
    await box.delete(key);
  }

  Future<void> updateTodo(Todo todo) async {
    final box = await _box;
    if (todo.key != null) {
      await box.put(todo.key, todo);
    }
  }

  Future<List<Todo>> getAllTodos() async {
    final box = await _box;
    return box.values.toList();
  }

  Future<void> initialize() async {
    await Hive.openBox<Todo>(_boxName);
  }
}