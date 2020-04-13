import 'package:dio/dio.dart';
import 'package:quarentena_tech_mobile/src/models/thing.dart';
import 'package:quarentena_tech_mobile/src/pages/utils/constants.dart';

class Api {
  final _dio = Dio(
    BaseOptions(
      baseUrl: BASE_URL + '/api',
    ),
  );

  Future<List<Thing>> getThings() async {
    final response = await _dio.get('/things');
    final things = <Thing>[];

    for (final item in response.data) {
      things.add(Thing.fromJson(item));
    }

    return things;
  }
}
