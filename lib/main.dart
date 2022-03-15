import 'package:api_dio_task/cubit/characters_cubit.dart';
import 'package:api_dio_task/get_it/get_it.dart';
import 'package:api_dio_task/pages/launches_screen.dart';
import 'package:api_dio_task/repository/character_repository.dart';
import 'package:api_dio_task/widgets/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() {
  AppGetIt.setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = AppRouter();
    return BlocProvider(
        create: (BuildContext context) =>
            CharactersCubit(CharactersRepository()),
        // ignore: prefer_const_constructors
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const LaunchesScreen(),
          onGenerateRoute: router.generateRoute,
        ));
  }
}
