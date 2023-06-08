import 'package:flutter/material.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({Key? key}) : super(key: key);

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {

  List<Widget> listCon = [

    Container(color: Colors.red,),
    Container(color: Colors.yellow,),
    Container(color: Colors.green,),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: 3,
          itemBuilder: (context,index){
        return listCon[index];
      }),
    );
  }
}
