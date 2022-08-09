import 'dart:math';

import 'package:mtctbe4/mappings.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ImageStateNotifier extends StateNotifier<List<ImageStates>> {
  ImageStateNotifier() : super([ImageStates.none, ImageStates.none]);

  final randomState1 = Random();
  final randomState2 = Random();

  void reshuffle () {

    int pos1 = randomState1.nextInt(12) + 1;
    int pos2 = randomState2.nextInt(12) + 1;

    if (pos1 == pos2){
      reshuffle();
    }
    else {
      state = [ImageStates.values[pos1], ImageStates.values[pos2]];
    }
  }

}

final imageStateNotifierProvider = StateNotifierProvider<ImageStateNotifier, List<ImageStates>>((ref) {
  return ImageStateNotifier();
});


