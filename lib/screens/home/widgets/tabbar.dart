import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mycareer/core/constants/sizeconfig.dart';
import 'package:mycareer/core/theme/app_colors.dart';
import 'package:mycareer/cubit/darkmode_cubit/darkmode_cubit.dart';
import 'package:mycareer/cubit/home_cubit/home_cubit.dart';
import 'package:mycareer/screens/home/page_view.dart/best_matches_page.dart';
import 'package:mycareer/screens/home/page_view.dart/most_recent_page.dart';

class HomeTabbar extends StatelessWidget {
  const HomeTabbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int son;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeCubit(),
        ),
        BlocProvider(
          create: (logic) => DarkmodeCubit(),
        ),
      ],
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          HomeCubit _context = context.watch<HomeCubit>();
          return BlocBuilder<DarkmodeCubit, DarkmodeState>(
            builder: (logic, state) {
              DarkmodeCubit _logic = logic.watch<DarkmodeCubit>();
              return Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(bottom: getHeight(10)),
                    height: getHeight(67),
                    width: getWidth(320),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(
                        getHeight(20),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            son = 0;
                            context.read<HomeCubit>().onTabbarChanged(son);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(
                              top: getHeight(10),
                              left: getWidth(20),
                              right: getWidth(10),
                              bottom: getHeight(10),
                            ),
                            height: getHeight(47),
                            width: getWidth(120),
                            decoration: BoxDecoration(
                              color: _context.tabbarIndex == 1
                                  ? Colors.transparent
                                  : Colors.blue,
                              borderRadius: BorderRadius.circular(
                                getHeight(15),
                              ),
                            ),
                            child: Text(
                              "Best matches",
                              style: TextStyle(
                                color: _context.tabbarIndex == 0
                                    ? Colors.white
                                    : const Color(0xff9F9F9F),
                                fontSize: getHeight(15),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            son = 1;
                            context.read<HomeCubit>().onTabbarChanged(son);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(
                              top: getHeight(10),
                              left: getWidth(10),
                              right: getWidth(20),
                              bottom: getHeight(10),
                            ),
                            height: getHeight(47),
                            width: getWidth(120),
                            decoration: BoxDecoration(
                              color: _context.tabbarIndex == 0
                                  ? Colors.transparent
                                  : Colors.blue,
                              borderRadius: BorderRadius.circular(
                                getHeight(15),
                              ),
                            ),
                            child: Text(
                              "Most recent",
                              style: TextStyle(
                                color: _context.tabbarIndex == 1
                                    ? Colors.white
                                    : const Color(0xff9F9F9F),
                                fontSize: getHeight(15),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  _context.tabbarIndex == 0
                      ? const BestMatchesPage()
                      : const MostRecentPage(),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
