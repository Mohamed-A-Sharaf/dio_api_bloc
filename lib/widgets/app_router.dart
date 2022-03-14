import 'package:api_dio_task/cubit/characters_cubit.dart';
import 'package:api_dio_task/pages/launches_screen.dart';
import 'package:api_dio_task/pages/one_launch.dart';
import 'package:api_dio_task/repository/character_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constants/strings.dart';
import '../services/web_service.dart';

class AppRouter {
  late CharactersRepository charactersRepository;
  late CharactersCubit charactersCubit;

  AppRouter() {
    charactersRepository = CharactersRepository(WebServices());
    charactersCubit = CharactersCubit(charactersRepository);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case allLaunchesRoute:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => charactersCubit,
            child: const LaunchesScreen(),
          ),
        );
      case oneLaunchesRoute:
        return MaterialPageRoute(
            builder: (_) =>
                OneLaunchScreen(arguments: (settings.arguments as int)));
    }
    return null;
  }
}
