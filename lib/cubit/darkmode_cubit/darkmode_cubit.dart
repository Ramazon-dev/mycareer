import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

part 'darkmode_state.dart';

class DarkmodeCubit extends Cubit<DarkmodeState> {
  DarkmodeCubit() : super(DarkmodeInitial());
  bool isDark = false;
  ozgardi(bool isActive) {
    isDark = isActive;
    debugPrint("is dark $isDark");
    emit(DarkmodeInitial());
  }
}
