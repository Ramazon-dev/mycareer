import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mycareer/core/constants/sizeconfig.dart';
import 'package:mycareer/core/theme/app_colors.dart';
import 'package:mycareer/core/theme/app_icons.dart';
import 'package:mycareer/cubit/bottomnavbar_cubit/bottomnavbar_cubit.dart';
import 'package:mycareer/cubit/darkmode_cubit/darkmode_cubit.dart';
import 'package:mycareer/screens/chat/chat_menu.dart';
import 'package:mycareer/screens/home/widgets/showmodalbottomsheet_widget.dart';
import 'package:mycareer/screens/widgets/appbar_widget.dart';
import 'package:mycareer/screens/widgets/textwidget_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    int son = 0;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BottomnavbarCubit(),
        ),
        BlocProvider(
          create: (logic) => DarkmodeCubit(),
        ),
      ],
      child: BlocBuilder<BottomnavbarCubit, BottomnavbarState>(
        builder: (context, state) {
          BottomnavbarCubit _context = context.watch<BottomnavbarCubit>();
          return BlocBuilder<DarkmodeCubit, DarkmodeState>(
            builder: (logic, state) {
              DarkmodeCubit _logic = logic.watch<DarkmodeCubit>();

              return Scaffold(
                appBar: AppBarWidget(
                  leading: ShowModalBottomSheetWidget(),
                  widget: InkWell(
                    child: AppIcons.send(color: AppColors.textColor),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChatMenuPage(),
                        ),
                      );
                    },
                  ),
                ),
                body: _context.listOfPages[_context.pageIndex],
                bottomNavigationBar: BottomNavigationBar(
                  selectedFontSize: 23,
                  backgroundColor:
                      _logic.isDark ? AppColors.white : AppColors.darkColor,
                  unselectedFontSize: 15,
                  type: BottomNavigationBarType.fixed,
                  currentIndex: _context.pageIndex,
                  onTap: (int index) {
                    context.read<BottomnavbarCubit>().changePages(index);
                    son = index;
                  },
                  items: [
                    BottomNavigationBarItem(
                      icon: AppIcons.home(
                        color: _logic.isDark == false
                            ? AppColors.white
                            : son == 0
                                ? AppColors.textColor
                                : AppColors.blue,
                      ),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: AppIcons.document(
                          color: _logic.isDark == false
                              ? AppColors.white
                              : son == 1
                                  ? AppColors.textColor
                                  : AppColors.blue),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: AppIcons.notification(
                          color: _logic.isDark == false
                              ? AppColors.white
                              : son == 2
                                  ? AppColors.textColor
                                  : AppColors.blue),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: AppIcons.person(
                          color: _logic.isDark == false
                              ? AppColors.white
                              : son == 3
                                  ? AppColors.textColor
                                  : AppColors.blue),
                      label: '',
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
