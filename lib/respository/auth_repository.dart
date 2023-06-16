
import 'package:provider_project/data/network/BaseApiServices.dart';
import 'package:provider_project/data/network/NetworkApiService.dart';
import 'package:provider_project/res/app_url.dart';

class AuthRepository  {

  final BaseApiServices _apiServices = NetworkApiService() ;


  Future<dynamic> loginApi(dynamic data ) async {
    try{
      dynamic response = await _apiServices.getPostApiResponse(AppUrl.loginEndPint,data);
      return response ;
    }catch(e){
      throw e ;
    }
  }


  Future<dynamic> signUpApi(dynamic data )async{

    try{
      dynamic response = await _apiServices.getPostApiResponse(AppUrl.registerApiEndPoint, data);
      return response ;
    }catch(e){
      throw e ;
    }
  }

}