import 'package:dio/dio.dart';
import '../models/mitra_model.dart';

class ResellerService {
  final Dio _dio = Dio(BaseOptions(baseUrl: 'http://192.168.31.114:8000/api/'));

  Future<List<MitraModel>> getResellers() async {
    try {
      final response = await _dio.get('/resellers');
      List<dynamic> data = response.data;

      return data.map((json) => MitraModel.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Gagal mengambil reseller: $e');
    }
  }
}
