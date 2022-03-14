import 'package:api_dio_task/services/web_service.dart';

import '../models/characters.dart';

class CharactersRepository {
  late WebServices webServices;

  CharactersRepository(this.webServices);

  Future<List<Launches>> getAllLaunches() async {
    final characters = await webServices.getAllLaunches();
    return characters
        .map((characters) => Launches.fromJson(characters))
        .toList();
  }

  Future<Launches?> getOneLaunches(int flightnumber) async {
    final characters = await webServices.getOneLaunches(flightnumber);
    return characters;
  }
}
