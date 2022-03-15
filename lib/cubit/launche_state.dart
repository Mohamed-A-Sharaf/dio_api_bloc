import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../models/characters.dart';

part 'launche_state.freezed.dart';

@freezed
class LaunchesState with _$LaunchesState {
  const factory LaunchesState.charactersInitial() = InitalState;

  const factory LaunchesState.charactersLoaded(List<Launches> characters) =
      CharactersLoaded;

  const factory LaunchesState.characterLoaded(Launches launches) =
      CharacterLoaded;
}
