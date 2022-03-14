import 'package:api_dio_task/cubit/characters_cubit.dart';
import 'package:api_dio_task/widgets/character_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OneLaunchScreen extends StatefulWidget {
  final int arguments;

  const OneLaunchScreen({Key? key, required this.arguments}) : super(key: key);

  @override
  State<OneLaunchScreen> createState() => _OneLaunchScreenState();
}

class _OneLaunchScreenState extends State<OneLaunchScreen> {
  @override
  void initState() {
    final cubit = BlocProvider.of<CharactersCubit>(context);
    cubit.getOneLaunches(widget.arguments);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: buildBlocWidget()));
  }

  Widget buildBlocWidget() {
    return BlocBuilder<CharactersCubit, CharactersState>(
        builder: (context, state) {
      if (state is CharacterLoaded) {
        return CharacterItem(character: state.launches);
      } else {
        return showLoadIndicator();
      }
    });
  }

  Widget showLoadIndicator() {
    return const Center(
      child: CircularProgressIndicator(
        color: Colors.green,
      ),
    );
  }
}
