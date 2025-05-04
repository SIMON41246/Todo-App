import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tod0_list/data/todo_model.dart';
import 'package:tod0_list/data/todo_repository.dart';

class HomeController extends GetxController {
  final TodoRepository _todoRepository = TodoRepository();
  final TextEditingController titleEditingController = TextEditingController();
  final TextEditingController descriptionEditingController =
      TextEditingController();

  RxList<Todo> todos = <Todo>[].obs;
  RxList<Todo> get filteredTodos => currentFilter.value == null
      ? todos
      : todos.where((t) => t.status == currentFilter.value).toList().obs;
  RxBool isLoading = false.obs;
  Rx<TodoStatus> selectedStatus = TodoStatus.Pending.obs;
  Rx<TodoStatus?> currentFilter = Rx<TodoStatus?>(null);

  @override
  void onInit() {
    super.onInit();
    loadTodos();
  }

  Future<void> loadTodos() async {
    isLoading(true);
    try {
      todos.value = await _todoRepository.getAllTodos();
    } finally {
      isLoading(false);
    }
  }

  Future<bool> addTodo() async {
    try {
      if (titleEditingController.text.trim().isEmpty &&
          descriptionEditingController.text.trim().isEmpty) {
        return false;
      }

      final todo = Todo(
          title: titleEditingController.text,
          content: descriptionEditingController.text,
          status: TodoStatus.Pending,
          startDate: DateTime.now());

      await _todoRepository.addTodo(todo);
      titleEditingController.clear();
      descriptionEditingController.clear();
      await loadTodos();
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> updateTodo(Todo todo) async {
    try {
      await _todoRepository.updateTodo(todo.copyWith(
        title: titleEditingController.text,
        content: descriptionEditingController.text,
        status: selectedStatus.value,
      ));
      titleEditingController.clear();
      descriptionEditingController.clear();
      await loadTodos();
      print(' Todo updated successfully with key: $todo');
      return true;
    } catch (e) {
      // Handle error if needed
      return false;
    }
  }

  Future<void> deleteTodo(int key) async {
    await _todoRepository.deleteTodo(key);
    await loadTodos();
  }

  void setFilter(TodoStatus? status) {
    currentFilter.value = status;
  }

  Future<void> toggleTodoCompletion(Todo todo) async {
    final newStatus = todo.status == TodoStatus.Pending
        ? TodoStatus.Done
        : TodoStatus.Pending;
    final updatedTodo = todo.copyWith(
      status: newStatus,
      finishDate: newStatus == TodoStatus.Done ? DateTime.now() : null,
    );
    await updateTodo(updatedTodo);
  }
}
