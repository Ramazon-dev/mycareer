import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'darkmode_state.dart';

class DarkmodeCubit extends Cubit<DarkmodeState> {
  DarkmodeCubit() : super(DarkmodeInitial());
}
