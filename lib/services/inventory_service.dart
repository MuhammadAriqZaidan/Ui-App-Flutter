import 'package:dio/dio.dart';
import '../models/barang_model.dart';

class BarangService {
  final Dio _dio = Dio(BaseOptions(baseUrl: 'http://192.168.31.114:8000/api/'));

  Future<List<BarangModel>> getBarang() async {
    try {
      final response = await _dio.get('/barang');
      List<dynamic> data = response.data;

      return data.map((json) => BarangModel.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Gagal mengambil barang: $e');
    }
  }
}
