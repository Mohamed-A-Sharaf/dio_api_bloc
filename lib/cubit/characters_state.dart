part of 'characters_cubit.dart';

@immutable
abstract class CharactersState {}

class CharactersInitial extends CharactersState {}

class CharactersLoaded extends CharactersState {
  final List<Launches> characters;

  CharactersLoaded(this.characters);
}

class CharacterLoaded extends CharactersState {
  final Launches launches;

  CharacterLoaded(this.launches);
}
