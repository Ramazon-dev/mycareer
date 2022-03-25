import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:mycareer/screens/home/home_body.dart';
import 'package:mycareer/screens/notifications/notifications_page.dart';
import 'package:mycareer/screens/profile/profile_page.dart';
import 'package:mycareer/screens/saved_jobs/saved_jobs_page.dart';

part 'bottomnavbar_state.dart';

class BottomnavbarCubit extends Cubit<BottomnavbarState> {
  int pageIndex = 0;
  BottomnavbarCubit() : super(BottomnavbarInitial());
  List listOfPages = [
    const HomeBody(),
    const SavedJobsPage(),
    const NotificationsPage(),
    const ProfilePage(),
  ];
  changePages(int onchanged) {
    pageIndex = onchanged;
    // listOfPages[pageCount];
    emit(BottomnavbarInitial());
// listOfPages[]
  }
}
