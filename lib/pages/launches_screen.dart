import 'package:api_dio_task/cubit/characters_cubit.dart';
import 'package:api_dio_task/models/characters.dart';
import 'package:api_dio_task/widgets/character_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/launche_state.dart';

class LaunchesScreen extends StatefulWidget {
  const LaunchesScreen({Key? key}) : super(key: key);

  @override
  State<LaunchesScreen> createState() => _LaunchesScreenState();
}

class _LaunchesScreenState extends State<LaunchesScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<CharactersCubit>(context).getAllLaunches();
  }

  Widget buildBlocWidget() {
    return BlocBuilder<CharactersCubit, LaunchesState>(
        builder: (context, state) {
      return state.maybeWhen(
          charactersLoaded: (characters) => buildLoadedListWidgets(characters),
          orElse: () => const Text('No Data'));
    });
  }

  Widget showLoadIndicator() {
    return const Center(
      child: CircularProgressIndicator(
        color: Colors.green,
      ),
    );
  }

  Widget buildLoadedListWidgets(List<Launches> characters) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.grey,
        child: Column(
          children: [
            buildCharactersList(characters),
          ],
        ),
      ),
    );
  }

  Widget buildCharactersList(List<Launches> characters) {
    return GridView.builder(
      itemCount: characters.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
      ),
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        //TODO : not done
        return CharacterItem(character: characters[index]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'All Launches',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: buildBlocWidget(),
    );
  }
}
