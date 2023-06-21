import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:provider_project/model/datamodelclass1.dart';


// Future<DataModel?> getSinglePostData() async {
//
//   DataModel? result;
//   try {
//     final response = await http.get(
//       Uri.parse("https://jsonplaceholder.typicode.com/posts/2"),
//       headers: {
//         HttpHeaders.contentTypeHeader: "application/json",
//       },);
//     if (response.statusCode == 200) {
//       final item = json.decode(response.body);
//       result = DataModel.fromJson(item);
//     } else {
//       print("error");
//     }
//   } catch (e) {
//     log(e.toString());
//   }
//   return result;
// }


Future<EventModel?> getEventApiData() async {

  EventModel? result;

  try {
    final response = await http.get(Uri.parse("https://dev.api.pointsoftango.app/events/fullSchedule/03082023_NTF137927"));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      print("data +++++");
      result = EventModel.fromJson(data['results']);
      print("data ----");
      // return result;
    } else {
      print("error");
    }
  } catch (e) {
    log(e.toString());
  }
  return result;
}