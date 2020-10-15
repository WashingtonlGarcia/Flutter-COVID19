import 'package:flutter_covid/app/data/models/data_model.dart';
import 'package:flutter_covid/app/data/providers/api_provider.dart';

class ApiRepository {
  final ApiProvider _apiProvider = ApiProvider();

  Future<List<DataModel>> handlesGettingTheData() {
    return _apiProvider.handlesGettingTheData();
  }
}
