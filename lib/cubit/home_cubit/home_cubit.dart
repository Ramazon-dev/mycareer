import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  int tabbarIndex = 0;
  HomeCubit() : super(HomeInitial());
  onTabbarChanged(int onchanged) {
    tabbarIndex = onchanged;

    emit(HomeInitial());
  }
}
