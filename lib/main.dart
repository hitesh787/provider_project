import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/provider/bottom_navigator_provider.dart';
import 'package:provider_project/provider/dataclass.dart';
import 'package:provider_project/provider/increment_dicrement_provider.dart';
import 'package:provider_project/provider/signup_provider.dart';
import 'package:provider_project/provider/string_provider.dart';
import 'package:provider_project/utils/routes/routes.dart';
import 'package:provider_project/utils/routes/routes_name.dart';
import 'package:provider_project/view_model/auth_view_model.dart';
import 'package:provider_project/view_model/user_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AddAndRemove()),
        ChangeNotifierProvider(create: (context) => ChangeCourse()),
        ChangeNotifierProvider(create: (context) => DataClass()),
        ChangeNotifierProvider(create: (context) => BottomNavigatorBarProvider()),
        ChangeNotifierProvider(create: (context) => SignUpDataClass()),
        ChangeNotifierProvider(create: (context) => AuthViewModel()),
        ChangeNotifierProvider(create: (context) => UserViewModel())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: LoginPages(),
        initialRoute: RoutesName.splash,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}
