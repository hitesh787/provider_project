import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:provider_project/model/sign_up_model.dart';
import 'package:provider_project/services/signup_services.dart';

class SignUpDataClass extends ChangeNotifier {
  bool _loading = false;
  bool isBack = false;

  bool get loading => _loading;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }


  Future<void> postData(SignUpBody body) async {
    _loading = true;
    notifyListeners();
    http.Response response = (await register(body))!;
    if (response.statusCode == 200) {
      isBack = true;
    }
    _loading = false;
    notifyListeners();
  }


  void login(String email, String password) async {
    setLoading(true);
    try {
      Response response = await post(Uri.parse('https://reqres.in/api/login'),
          body: {"email": email, "password": password});

      if (response.statusCode == 200) {
        print('successful');
        setLoading(false);
      } else {
        setLoading(false);
        print('Error');
      }
    } catch (e) {
      setLoading(false);
      print(e.toString());
    }
  }
}
