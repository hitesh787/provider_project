import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/provider/increment_dicrement_provider.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final addRemove = Provider.of<AddAndRemove>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Total', style: TextStyle(fontSize: 52)),
            const SizedBox(height: 20),
            Consumer<AddAndRemove>(
              builder: (context, addRemove, child) {
                print('only widget');
                return Text(addRemove.count.toString(), style: const TextStyle(fontSize: 50));
              },
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      addRemove.incrementCounter();
                      // if (addRemove.count < 5) {
                      //   addRemove.incrementCounter();
                      // } else {
                      //   var snackBar =
                      //       const SnackBar(content: Text('Maximum 5'));
                      //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      // }
                      // setState(() {});
                    },
                    child: const Icon(Icons.add)),
                const SizedBox(width: 50,),
                ElevatedButton(
                    onPressed: () {
                      addRemove.decrementCounter();
                      // context.read<AddAndRemove>().decrementCounter();
                      // if (addRemove.count > 0) {
                      //   addRemove.decrementCounter();
                      // } else {
                      //   var snackBar =
                      //       const SnackBar(content: Text('Minimum 0'));
                      //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      // }
                      // setState(() {});
                    },
                    child: const Icon(Icons.remove)),
              ],
            )
          ],
        ),
      ),
      // ),
    );
  }
}
