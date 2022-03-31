import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mycareer/core/constants/sizeconfig.dart';
import 'package:mycareer/core/theme/app_colors.dart';
import 'package:mycareer/cubit/home_cubit/home_cubit.dart';
import 'package:mycareer/screens/home/widgets/tabbar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          var _context = context.watch<HomeCubit>();
          return Padding(
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
                        // color: Colors.cyan,
                        spreadRadius: 0.1,
                        blurRadius: 0.1,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.only(top: getHeight(20)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      // fillColor: AppColors.white,
                      // filled: true,
                      border: OutlineInputBorder(
                        // borderSide: const BorderSide(color: Colors.blue),
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
                          // color: AppColors.textColor,
                          size: getHeight(25),
                        ),
                      ),
                    ),
                  ),
                ).only(bottom: getHeight(20)),
                const HomeTabbar()
              ],
            ),
          );
        },
      ),
    );
  }
}
