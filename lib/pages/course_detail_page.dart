import 'package:flutter/material.dart';
import 'package:test_project_u_future/data/courses_list.dart';

class CourseDetailPage extends StatelessWidget {
  const CourseDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pageId = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{'pageId': 1}) as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: Text(coursesList[pageId['pageId']]["title"]),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text(
                'Всего уроков: ${coursesList[pageId['pageId']]['count']}',
                style: const TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
              child: Text(coursesList[pageId['pageId']]['description']),
            )
          ],
        ),
      ),
    );
  }
}
