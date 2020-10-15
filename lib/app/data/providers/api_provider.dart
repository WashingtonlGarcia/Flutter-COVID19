import 'package:dio/dio.dart';
import 'package:flutter_covid/app/data/models/data_model.dart';

class ApiProvider {
  final String _endPoint = 'https://covid19-brazil-api.now.sh/api/report/v1';
  final Dio _dio = Dio();

  Future<List<DataModel>> handlesGettingTheData() async {
    try {
      final Response response = await _dio.get(_endPoint);
      return (response.data['data'] as List ?? [])
          .cast<Map<String, dynamic>>()
          .map((Map<String, dynamic> map) => DataModel.fromMap(map: map))
          .toList();
    } catch (_) {
      rethrow;
    }
  }
}
