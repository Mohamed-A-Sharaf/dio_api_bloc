import 'package:api_dio_task/models/characters.dart';
import 'package:api_dio_task/repository/character_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepository charactersRepository;

  CharactersCubit(this.charactersRepository) : super(CharactersInitial());

  void getAllLaunches() {
    charactersRepository.getAllLaunches().then((characters) {
      emit(CharactersLoaded(characters));
    });
  }

  void getOneLaunches(int flightnumber) {
    charactersRepository.getOneLaunches(flightnumber).then((characters) {
      emit(CharacterLoaded(characters!));
    });
  }
}
