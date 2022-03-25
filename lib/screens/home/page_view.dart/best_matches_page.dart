import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:mycareer/core/constants/sizeconfig.dart';
import 'package:mycareer/core/theme/app_colors.dart';

class BestMatchesPage extends StatelessWidget {
  const BestMatchesPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: getHeight(414),
            width: getWidth(300),
            child: ListView.builder(
              
              physics: const BouncingScrollPhysics(),
              itemCount: 1,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.only(
                    left: getWidth(30),
                    right: getWidth(30),
                    top: getWidth(30),
                  ),
                  margin: EdgeInsets.symmetric(vertical: getHeight(20)),
                  height: getHeight(357),
                  width: getWidth(300),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      getHeight(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: AppColors.textColor,
                            radius: getHeight(30),
                          ).only(right: getWidth(20)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Need web Designer",
                                style: TextStyle(
                                  color: AppColors.textColor,
                                  fontSize: getHeight(15),
                                  fontWeight: FontWeight.w700,
                                ),
                              ).only(bottom: getHeight(10)),
                              Text(
                                'Price: \$350-\$500',
                                style: TextStyle(
                                  color: AppColors.blue,
                                  fontSize: getHeight(14),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          )
                        ],
                      ).only(bottom: getHeight(20)),
                      Text(
                        """
Our site obviously will not be exactly the same, but the same type of concepts will be there.

If you think you can do this work, please reply with ONE SINGLE LINK that is the closest to emulating what you see above...
                """,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: getHeight(14),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: AppColors.textColor,
                          fixedSize: Size(getWidth(240), getHeight(40)),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Submit proposales",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: getHeight(14),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        height: getHeight(30),
                        width: getWidth(290),
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Icon(Icons.remove_red_eye_outlined)
                                .only(right: getWidth(10)),
                            const Text("432").only(right: getWidth(15)),
                            const Text("22:16").only(right: getWidth(15)),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          );
  }
}