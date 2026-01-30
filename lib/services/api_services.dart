import 'package:api_bloc_pattern/common/api_endpoints.dart';
import 'package:api_bloc_pattern/models/cart_model.dart';
import 'package:dio/dio.dart';

class ApiServices {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: ApiEndpoints.baseUrl,
    ),
  );

  Future<List<CartModel>> getData() async {
    try {
      final Response response = await _dio.get(ApiEndpoints.carts);

      if (response.statusCode == 200) {
        final List<dynamic>? carts = response.data['carts'];
        if (carts == null) {
          return [];
        }
        return carts
            .map((json) => CartModel.fromJson(json as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('Failed to load carts: ${response.statusCode}');
      }
    } on DioException catch (e) {
      String errorMessage = 'Connection error';
      if (e.type == DioExceptionType.connectionTimeout) {
        errorMessage = 'Connection timed out';
      } else if (e.response != null) {
        errorMessage = 'Server error: ${e.response?.statusCode}';
      }
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
}
