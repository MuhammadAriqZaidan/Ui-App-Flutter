import 'package:dio/dio.dart';
import 'package:susu_etawa/models/mitra_model.dart'; // Import model-mu, sesuaikan

class ApiService {
  final Dio _dio = Dio(BaseOptions(
    baseUrl: 'http://192.168.31.114:8000/api',
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 5),
  ));

 Future<List<MitraModel>> getDistributors() async {
  try {
    final response = await _dio.get('/distributors'); // Endpoint Laravel-mu
    List<dynamic> data = response.data;
    return data.map((json) => MitraModel.fromJson(json)).toList();
  } catch (e) {
    throw Exception('Gagal mengambil distributor: $e');
  }
}

Future<List<MitraModel>> getResellers() async {
  try {
    final response = await _dio.get('/resellers'); // Endpoint Laravel-mu
    List<dynamic> data = response.data;
    return data.map((json) => MitraModel.fromJson(json)).toList();
  } catch (e) {
    throw Exception('Gagal mengambil reseller: $e');
  }
}


  // Tambahkan metode lainnya di sini seperti getResellers(), getInventory(), dst
}
