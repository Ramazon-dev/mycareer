import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mycareer/core/constants/sizeconfig.dart';
import 'package:mycareer/core/theme/app_colors.dart';
import 'package:mycareer/core/theme/app_icons.dart';
import 'package:mycareer/cubit/bottomnavbar_cubit/bottomnavbar_cubit.dart';
import 'package:mycareer/screens/home/tabbar.dart';
import 'package:mycareer/screens/widgets/appbar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    int son = 0;
    return BlocProvider(
      create: (_) => BottomnavbarCubit(),
      child: BlocBuilder<BottomnavbarCubit, BottomnavbarState>(
        builder: (context, state) {
          var _context = context.watch<BottomnavbarCubit>();
          return Scaffold(
            backgroundColor: AppColors.scaffoldColor,
            appBar: AppBarWidget(),
            drawer: const Drawer(),
            body: _context.listOfPages[_context.pageIndex],
            bottomNavigationBar: BottomNavigationBar(
              selectedFontSize: 23,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.yellow,
              unselectedFontSize: 15,
              type: BottomNavigationBarType.fixed,
              currentIndex: _context.pageIndex,
              onTap: (int index) {
                son = index;
                context.read<BottomnavbarCubit>().changePages(index);
              },
              items: [
                BottomNavigationBarItem(
                  icon: AppIcons.home(
                    color: son == 0 ? Colors.blue : Colors.black,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: AppIcons.document(
                    color: son == 1 ? Colors.blue : Colors.black,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: AppIcons.notification(
                    color: son == 2 ? Colors.blue : Colors.black,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: AppIcons.person(
                    color: son == 3 ? Colors.blue : Colors.black,
                  ),
                  label: '',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
