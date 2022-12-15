import 'package:flutter/material.dart';
import 'package:lista_tarefas/src/models/task.dart';
import 'package:lista_tarefas/src/models/task_store.dart';
import 'package:mobx/mobx.dart';

part 'homepage_controller.g.dart';

class HomePageController = HomePageControllerBase with _$HomePageController;

abstract class HomePageControllerBase with Store {
  @observable
  ObservableList<TaskStore> taskList = ObservableList<TaskStore>();

  TextEditingController textEditingController = TextEditingController();

  @action
  void resolveTask(int index) {
    var taskSelected = taskList[index].selected;
    taskList[index].selected = !taskSelected;
  }

  @action
  void add(String title) {
    taskList.add(TaskStore(task: Task(title: title), selected: false));
  }

  @action
  void clear() {
    taskList.clear();
  }
}
