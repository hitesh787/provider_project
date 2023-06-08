import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/provider/dataclass.dart';

class ProviderDemoScreen extends StatefulWidget {
  const ProviderDemoScreen({Key? key}) : super(key: key);

  @override
  State<ProviderDemoScreen> createState() => _ProviderDemoScreenState();
}

class _ProviderDemoScreenState extends State<ProviderDemoScreen> {

  @override
  void initState() {
    super.initState();
    final dataClass = Provider.of<DataClass>(context,listen: false);
    dataClass.getPostData();
  }

  @override
  Widget build(BuildContext context) {
    print('c');
    final dataClass = Provider.of<DataClass>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Text(dataClass.post?.title ?? "",style: const TextStyle(fontSize: 30),),
            Text(dataClass.post?.body ?? "",style: const TextStyle(fontSize: 20),),
          ],
        ),
      ),
    );
  }
}
