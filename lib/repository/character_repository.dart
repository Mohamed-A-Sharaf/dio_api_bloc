import 'package:api_dio_task/get_it/get_it.dart';
import '../models/characters.dart';

class CharactersRepository {
  final restClient = AppGetIt.restClient();

  CharactersRepository();

  Future<List<Launches>> getAllLaunches() async {
    final characters = await restClient.getAllLaunches();
    return characters;
  }

  Future<Launches?> getOneLaunches(int flightNumber) async {
    final characters = await restClient.getOneLaunches(flightNumber);
    return characters;
  }
}
