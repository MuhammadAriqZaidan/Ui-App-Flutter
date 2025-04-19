import 'package:dio/dio.dart';
import 'package:susu_etawa/models/mitra_model.dart';

class MitraService {
  final Dio _dio = Dio(BaseOptions(baseUrl: 'http://192.168.31.114:8000/api/'));

  Future<List<MitraModel>> getDistributors() async {
    try {
      final response = await _dio.get('/distributors');
      List<dynamic> data = response.data;

      return data.map((json) => MitraModel.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Gagal mengambil distributor: $e');
    }
  }
}
