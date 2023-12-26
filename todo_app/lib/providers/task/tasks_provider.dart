import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fitness_app/data/data.dart';
import 'package:fitness_app/providers/providers.dart';

final tasksProvider = StateNotifierProvider<TaskNotifier, TaskState>((ref) {
  final repository = ref.watch(taskRepositoryProvider);
  return TaskNotifier(repository);
});
