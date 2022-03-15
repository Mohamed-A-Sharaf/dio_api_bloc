import 'package:api_dio_task/models/characters.dart';
import 'package:api_dio_task/repository/character_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'launche_state.dart';

class CharactersCubit extends Cubit<LaunchesState> {
  final CharactersRepository charactersRepository;

  CharactersCubit(this.charactersRepository)
      : super(const LaunchesState.charactersInitial());

  void getAllLaunches() {
    charactersRepository.getAllLaunches().then((characters) {
      emit(CharactersLoaded(characters));
    });
  }

  void getOneLaunches(int flightNumber) {
    charactersRepository.getOneLaunches(flightNumber).then((characters) {
      emit(CharacterLoaded(characters!));
    });
  }
}
