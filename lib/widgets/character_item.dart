import 'package:api_dio_task/constants/strings.dart';
import 'package:api_dio_task/models/characters.dart';
import 'package:flutter/material.dart';

class CharacterItem extends StatelessWidget {
  final Launches character;

  const CharacterItem({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(oneLaunchesRoute, arguments: character.flightNumber);
      },
      child: Container(
        child: Text(
          character.launchYear!,
        ),
      ),
    );
  }
}
