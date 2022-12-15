import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:lista_tarefas/src/controller/homepage_controller.dart';
import 'package:lista_tarefas/src/view/pages/homepage.dart';

void main() {
  final getIt = GetIt.instance;

  getIt.registerSingleton(HomePageController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agenda',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}
