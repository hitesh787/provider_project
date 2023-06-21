import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/provider/dataclass.dart';

class ProviderDemoScreen extends StatefulWidget {
  const ProviderDemoScreen({Key? key}) : super(key: key);

  @override
  State<ProviderDemoScreen> createState() => _ProviderDemoScreenState();
}

class _ProviderDemoScreenState extends State<ProviderDemoScreen> {

  bool descTextShowFlag = false;

  @override
  void initState() {
    super.initState();
    final dataClass = Provider.of<EventClass>(context, listen: false);
    dataClass.getEventData();
  }


  // getEventFun()async{
  //   final dataClass = Provider.of<EventClass>(context,listen: false);
  //   await dataClass.getEventData();
  //
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<EventClass>(builder: (context, eventValue, child) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: eventValue.data != null
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ListView.builder(
                      //   physics: const NeverScrollableScrollPhysics(),
                      //   shrinkWrap: true,
                      //   itemCount: eventValue.data!.organisersDetails!.length,
                      //   itemBuilder: (c, i) {
                      //     return Column(
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       children: [
                      //         Text(
                      //             "User Name : ${eventValue.data!.organisersDetails![i].username.toString()}"),
                      //         Text(
                      //             "Nationality : ${eventValue.data!.organisersDetails![i].nationality.toString()}"),
                      //         Text(
                      //             "Full Name : ${eventValue.data!.organisersDetails![i].fullName.toString()}"),
                      //         Center(
                      //             child: eventValue.data!.organisersDetails![i]
                      //                         .pictureUrl !=
                      //                     null
                      //                 ? const Center(
                      //                     child: CircularProgressIndicator())
                      //                 : Image.network(eventValue
                      //                     .data!.organisersDetails![i].pictureUrl
                      //                     .toString()))
                      //       ],
                      //     );
                      //   },
                      // ),
                      // const SizedBox(height: 20,),
                      // ListView.builder(
                      //   physics: const NeverScrollableScrollPhysics(),
                      //   shrinkWrap: true,
                      //   itemCount: eventValue.data!.media!.length,
                      //   itemBuilder: (c, index) {
                      //     return Column(
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       children: [
                      //         Text(
                      //           "Title : ${eventValue.data!.media![index].title.toString()}",
                      //           style: const TextStyle(fontSize: 22),
                      //         ),
                      //         Text(
                      //           "Youtube video Link : ${eventValue.data!.media![index].link.toString()} ",
                      //           style: const TextStyle(fontSize: 15),
                      //         ),
                      //       ],
                      //     );
                      //   },
                      // ),
                      // const SizedBox(height: 20,),
                      // Center(
                      //     child: eventValue.data!.coverUrl!= null
                      //         ? const Center(
                      //         child: CircularProgressIndicator())
                      //         : Image.network(eventValue.data!.coverUrl.toString()),
                      // ),
                      // const SizedBox(height: 20,),
                      // Center(
                      //   child: eventValue.data!.logoUrl!= null
                      //       ? const Center(child: CircularProgressIndicator())
                      //       : Image.network(eventValue.data!.logoUrl.toString()),
                      // ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(eventValue.data!.description.toString(),maxLines: descTextShowFlag ? eventValue.data!.description!.length : 5,textAlign: TextAlign.start,overflow: TextOverflow.ellipsis,),
                          const SizedBox(height: 10),
                          GestureDetector(
                              onTap: (){
                                setState(() {
                                  descTextShowFlag = !descTextShowFlag;
                                });
                              },
                              child: descTextShowFlag ? const Text('Show Less"') : const Text('Show More')),
                        ],
                      ),
                      // ListView.builder(
                      //   physics: const NeverScrollableScrollPhysics(),
                      //   shrinkWrap: true,
                      //   itemCount: eventValue.data!.registrationForm!.length,
                      //   itemBuilder: (c,i){
                      //     return Column(
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       children: [
                      //         Text(eventValue.data!.registrationForm![i].id.toString()),
                      //         Text(eventValue.data!.registrationForm![i].question.toString()),
                      //         Text(eventValue.data!.registrationForm![i].translation.toString()),
                      //         Text(eventValue.data!.registrationForm![i].mandatory.toString()),
                      //         Text(eventValue.data!.registrationForm![i].editable.toString()),
                      //         Text(eventValue.data!.registrationForm![i].disabled.toString()),
                      //         Text(eventValue.data!.registrationForm![i].order.toString()),
                      //         Text(eventValue.data!.registrationForm![i].type.toString()),
                      //       ],
                      //     );
                      //   },
                      // ),
                      // ListView.builder(
                      //     physics: const NeverScrollableScrollPhysics(),
                      //     shrinkWrap: true,
                      //     itemCount: eventValue.data!.extendedSchedule!.djs!.length,
                      //     itemBuilder: (c,i){
                      //   return Column(
                      //     children: [
                      //
                      //     ],
                      //   );
                      // })





                    ],
                  )
                : const Center(child: CircularProgressIndicator()),
          ),
        );
      }),
    );
  }
}
