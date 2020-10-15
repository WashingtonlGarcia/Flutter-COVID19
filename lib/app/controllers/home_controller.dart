import 'package:flutter_covid/app/data/models/data_model.dart';
import 'package:flutter_covid/app/data/repositories/api_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  final ApiRepository _apiRepository = ApiRepository();

  Future<List<DataModel>> handlesGettingTheData() {
    return _apiRepository.handlesGettingTheData();
  }
}