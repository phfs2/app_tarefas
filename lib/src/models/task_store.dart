// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:lista_tarefas/src/models/task.dart';
import 'package:mobx/mobx.dart';

part 'task_store.g.dart';

class TaskStore = TaskStoreBase with _$TaskStore;

abstract class TaskStoreBase with Store {
  @observable
  Task task;
  @observable
  bool selected;

  TaskStoreBase({
    required this.task,
    required this.selected,
  });
}
