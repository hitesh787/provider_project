

import 'package:provider_project/data/network/BaseApiServices.dart';
import 'package:provider_project/data/network/NetworkApiService.dart';
import 'package:provider_project/model/movies_model.dart';
import 'package:provider_project/res/app_url.dart';

class HomeRepository {

  final BaseApiServices _apiServices = NetworkApiService() ;

  Future<MovieListModel> fetchMoviesList()async{

    try{

      dynamic response = await _apiServices.getGetApiResponse(AppUrl.moviesListEndPoint);
      return response = MovieListModel.fromJson(response);

    }catch(e){
      throw e ;
    }
  }

}