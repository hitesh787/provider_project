import 'package:flutter/cupertino.dart';
import 'package:provider_project/model/data_model.dart';
import 'package:provider_project/services/get_data_api.dart';

class DataClass extends ChangeNotifier{

  DataModel? post;
  bool isLoading = false;

  getPostData() async {
    isLoading = true;
    post = (await getSinglePostData());
    isLoading = false;
    notifyListeners();
  }
}