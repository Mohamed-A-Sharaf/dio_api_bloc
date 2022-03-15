import 'package:api_dio_task/models/characters.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_api.g.dart';

@RestApi(baseUrl: "https://api.spacexdata.com/v3/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/launches")
  Future<List<Launches>> getAllLaunches();

  @GET("/launches/{flightNumber}")
  Future<Launches> getOneLaunches(@Path("flightNumber") int flightNumber);
}
