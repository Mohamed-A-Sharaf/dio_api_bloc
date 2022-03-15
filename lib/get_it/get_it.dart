import 'package:api_dio_task/services/retrofit/rest_api.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class AppGetIt {
  static Dio restapi = Dio();

  static void setup() {
    GetIt.I.registerSingleton<RestClient>(RestClient(restapi));
  }

  static RestClient restClient() => GetIt.I<RestClient>();
}
