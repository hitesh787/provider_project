// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/provider/string_provider.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    print('c');
    final changeSubject = Provider.of<ChangeCourse>(context,listen: true);
    return Scaffold(
      body: Center(
        child: Column(
          children: [

            const SizedBox(height: 200,),
            Text('We are learning ${changeSubject.subject}' ,style: const TextStyle(fontSize: 25),),
            const SizedBox(height: 50,),
            ElevatedButton(onPressed: (){
              changeSubject.changeSubject('Flutter');
            }, child: const Text('Flutter',style: TextStyle(fontSize: 20),)),
            const SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              changeSubject.changeSubject('React Js');
            }, child: const Text('React Js',style: TextStyle(fontSize: 20),)),
            const SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              changeSubject.changeSubject('CEH v 11');
            }, child: const Text('CEH v 11',style: TextStyle(fontSize: 20),)),

          ],
        ),
      ),
    );
  }
}
