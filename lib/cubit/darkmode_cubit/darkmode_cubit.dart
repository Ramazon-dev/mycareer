import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

part 'darkmode_state.dart';

class DarkmodeCubit extends Cubit<DarkmodeState> {
  DarkmodeCubit() : super(DarkmodeInitial());
  bool isDark = true;
  ozgardi(bool isActive) {
    isDark = isActive;
    emit(DarkmodeInitial());
  }
}
