import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:mycareer/core/constants/sizeconfig.dart';
import 'package:mycareer/core/theme/app_colors.dart';
import 'package:mycareer/screens/home/page_view.dart/best_matches_page.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          Container(
            margin: EdgeInsets.only(bottom: getHeight(10)),
            height: getHeight(67),
            width: getWidth(320),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                getHeight(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: getHeight(10),
                    left: getWidth(20),
                    right: getWidth(10),
                    bottom: getHeight(10),
                  ),
                  height: getHeight(47),
                  width: getWidth(120),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(
                      getHeight(15),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: getHeight(10),
                    left: getWidth(10),
                    right: getWidth(20),
                    bottom: getHeight(10),
                  ),
                  height: getHeight(47),
                  width: getWidth(120),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(
                      getHeight(15),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const BestMatchesPage(),
        ],
      ),
    );
  }
}
