// import 'package:api_dio_task/constants/strings.dart';
// import 'package:api_dio_task/models/characters.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
//
// class WebServices {
//   late Dio dio;
//
//   WebServices() {
//     BaseOptions options = BaseOptions(
//       baseUrl: baseUrl,
//       receiveDataWhenStatusError: true,
//       connectTimeout: 20 * 1000,
//       receiveTimeout: 20 * 1000,
//     );
//     dio = Dio(options);
//   }
//
//   Future<List<dynamic>> getAllLaunches() async {
//     try {
//       Response response = await dio.get('/launches');
//       if (kDebugMode) {
//         print(response.data.toString());
//       }
//       return response.data;
//     } catch (e) {
//       if (kDebugMode) {
//         print(e.toString());
//       }
//       return [];
//     }
//   }
//
//   Future<Launches?> getOneLaunches(int flight_number) async {
//     try {
//       Response response = await dio.get('/launches/$flight_number');
//       if (kDebugMode) {
//         print(response.data.toString());
//       }
//       return Launches.fromJson(response.data);
//     } catch (e) {
//       if (kDebugMode) {
//         print(e.toString());
//       }
//     }
//     return null;
//   }
// }
