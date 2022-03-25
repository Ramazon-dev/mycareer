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
            body: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getHeight(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My Career',
                    style: TextStyle(
                      color: AppColors.textColor,
                      fontSize: getHeight(26),
                      fontWeight: FontWeight.w700,
                    ),
                  ).only(left: getHeight(10)),
                  Text(
                    'Find job easy',
                    style: TextStyle(
                      color: AppColors.blue,
                      fontSize: getHeight(17),
                      fontWeight: FontWeight.w300,
                    ),
                  ).only(left: getHeight(10)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        getHeight(20),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.cyan,
                          spreadRadius: 0.1,
                          blurRadius: 0.1,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    margin: EdgeInsets.only(top: getHeight(20)),
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: AppColors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(
                            getHeight(20),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(
                            getHeight(20),
                          ),
                        ),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: AppColors.grey,
                          fontSize: getHeight(15),
                        ),
                        suffixIcon: InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.search,
                            color: AppColors.textColor,
                            size: getHeight(25),
                          ),
                        ),
                      ),
                    ),
                  ).only(bottom: getHeight(20)),
                  _context.listOfPages[_context.pageIndex],
                ],
              ),
            ),
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
