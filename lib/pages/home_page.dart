import 'package:flutter/material.dart';
import 'package:test_project_u_future/widgets/home_page_widgets/courses_list_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Список курсов'),
      ),
      body: const CoursesListWidget(),
    );
  }
}
