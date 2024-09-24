import 'package:flutter/material.dart';
import 'package:test_project_u_future/pages/course_detail_page.dart';
import 'package:test_project_u_future/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(),
        '/detail-page': (context) => const CourseDetailPage()
      },
      title: 'Тестовое задание U-Future',
      home: const HomePage(),
    );
  }
}
