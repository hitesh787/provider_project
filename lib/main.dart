import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/provider/bottom_navigator_provider.dart';
import 'package:provider_project/provider/dataclass.dart';
import 'package:provider_project/provider/increment_dicrement_provider.dart';
import 'package:provider_project/provider/signup_provider.dart';
import 'package:provider_project/provider/string_provider.dart';
import 'package:provider_project/screen/add_remove_screen.dart';
import 'package:provider_project/screen/bottom_navigator.dart';
import 'package:provider_project/screen/signup_pade.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AddAndRemove()),
        ChangeNotifierProvider(create: (context) => ChangeCourse()),
        ChangeNotifierProvider(create: (context) => DataClass()),
        ChangeNotifierProvider(create: (context) => BottomNavigatorBarProvider()),
        ChangeNotifierProvider(create: (context) => SignUpDataClass()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const LoginPages(),
    ),);
  }
}


