import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/provider/dataclass.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({Key? key}) : super(key: key);

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {

  @override
  void initState() {
    super.initState();
    final dataClass = Provider.of<EventClass>(context, listen: false);
    dataClass.getEventData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<EventClass>(builder: (context,eventValue,child){
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: eventValue.data != null  ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Id : ${eventValue.data!.id.toString()}"),
                Text("Code : ${eventValue.data!.code.toString()}"),
                Text("Edition : ${eventValue.data!.edition.toString()}"),
                Text("Promoter : ${eventValue.data!.promoter.toString()}"),
                Text("Question : ${eventValue.data!.questions.toString()}"),
                Text("partners : ${eventValue.data!.partners.toString()}"),
                Text("messages : ${eventValue.data!.messages.toString()}"),
                Text("messages : ${eventValue.data!.messages.toString()}"),
                Text("guest : ${eventValue.data!.guest.toString()}"),
                Text("checkout : ${eventValue.data!.checkout.toString()}"),
                Text("colours : ${eventValue.data!.colours.toString()}"),
                Text("maxQty : ${eventValue.data!.maxQty.toString()}"),
                Text("selectedTab : ${eventValue.data!.selectedTab.toString()}"),
                Text("timeZoneOffset : ${eventValue.data!.timeZoneOffset.toString()}"),
                Text("headerBG : ${eventValue.data!.headerBG.toString()}"),
                Text("headerTXT : ${eventValue.data!.headerTXT.toString()}"),
                Text("selectedTXT : ${eventValue.data!.selectedTXT.toString()}"),
                Text("bodyBG : ${eventValue.data!.bodyBG.toString()}"),
                Text("bodyTXT : ${eventValue.data!.bodyTXT.toString()}"),
                Text("bodyTAB : ${eventValue.data!.bodyTAB.toString()}"),
                Text("buttonTXT : ${eventValue.data!.buttonTXT.toString()}"),
                Text("buttonBG : ${eventValue.data!.buttonBG.toString()}"),
                Text("background : ${eventValue.data!.background.toString()}"),
                Text("showTitle : ${eventValue.data!.showTitle.toString()}"),
                Text("link : ${eventValue.data!.link.toString()}"),
                Text("facebook : ${eventValue.data!.facebook.toString()}"),
                Text("instagram : ${eventValue.data!.instagram.toString()}"),
                Text("display : ${eventValue.data!.display.toString()}"),
                Text("process : ${eventValue.data!.process.toString()}"),
                Text("eventPlan : ${eventValue.data!.eventPlan.toString()}"),
                Text("capacity : ${eventValue.data!.capacity.toString()}"),
                Text("show : ${eventValue.data!.show.toString()}"),
                Text("whoIsIn : ${eventValue.data!.whoIsIn.toString()}"),
                Text("posts : ${eventValue.data!.posts.toString()}"),
                Text("pages : ${eventValue.data!.pages.toString()}"),
                Text("eventFull : ${eventValue.data!.eventFull.toString()}"),
                Text("cancelled : ${eventValue.data!.cancelled.toString()}"),
                Text("showRoom : ${eventValue.data!.showRoom.toString()}"),
                Text("showProgramme : ${eventValue.data!.showProgramme.toString()}"),
                Text("associationMember : ${eventValue.data!.associationMember.toString()}"),
                Text("favourite : ${eventValue.data!.favourite.toString()}"),
                Text("Title : ${eventValue.data!.title.toString()}"),
                Text("Name : ${eventValue.data!.name.toString()}"),
                Text("City : ${eventValue.data!.city.toString()}"),
                Text("Country : ${eventValue.data!.country.toString()}"),
                Text("Continent : ${eventValue.data!.continent.toString()}"),
                Text("Email : ${eventValue.data!.email.toString()}"),
                Text("Phone Number : ${eventValue.data!.phone.toString()}"),
                Text("Time Zone : ${eventValue.data!.timeZone.toString()}"),
                Text("Address : ${eventValue.data!.address.toString()}"),
                Text("Post Code : ${eventValue.data!.postCode.toString()}"),
                Text("Type : ${eventValue.data!.type.toString()}"),
                Text("Banner : ${eventValue.data!.banner.toString()}"),
                Container(
                  height: 51,
                  decoration: BoxDecoration(
                    color: Color(int.parse(eventValue.data!.bodyTAB.toString())),borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(child: Text('Button 1')),
                )

              ],
            ) : const Center(child: CircularProgressIndicator()),
          ),
        );
      },),
    );
  }
}
