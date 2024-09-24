import 'package:flutter/material.dart';
import 'package:test_project_u_future/data/courses_list.dart';
import 'package:test_project_u_future/pages/course_detail_page.dart';

class CoursesListWidget extends StatelessWidget {
  const CoursesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: coursesList.length,
        itemBuilder: (context, itemBuilder) {
          return ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/detail-page',
                  arguments: {'pageId': itemBuilder});
              // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CourseDetailPage()));
            },
            minTileHeight: 100,
            title: Center(
                child: Text(
              coursesList[itemBuilder]['title'],
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
            subtitle: Center(
                child: Text(
              coursesList[itemBuilder]['small_descrip'],
              style: const TextStyle(
                fontSize: 12,
              ),
            )),
          );
        });
  }
}
