import 'package:flutter/cupertino.dart';
import 'package:provider_project/model/datamodelclass1.dart';
import 'package:provider_project/services/get_data_api.dart';

class EventClass extends ChangeNotifier{

  EventModel? data;
  bool isLoading = false;

  getEventData() async {
    isLoading = true;
    data = (await getEventApiData());
    isLoading = false;
    notifyListeners();
  }



}