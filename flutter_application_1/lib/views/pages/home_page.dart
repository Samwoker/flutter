import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/data/constants.dart';
import 'package:flutter_application_1/views/pages/course_page.dart';
import 'package:flutter_application_1/views/pages/hero_widget.dart';
import 'package:flutter_application_1/views/widgets/container_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      KValue.basicLayout,
      KValue.bugFixes,
      KValue.cleanUi,
      KValue.keyConcepts,
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            HeroWidget(title: "Welcome", nextPage: CoursePage()),
            ...List.generate(list.length, (index) {
              return ContainerWidget(
                title: list.elementAt(index),
                description: "This is a description",
              );
            }),
          ],
        ),
      ),
    );
  }
}
