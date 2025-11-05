import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/pages/hero_widget.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(children: [HeroWidget(title: "Course")]),
        ),
      ),
    );
  }
}
