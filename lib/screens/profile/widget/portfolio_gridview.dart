import 'package:flutter/material.dart';
import 'package:mycareer/core/constants/sizeconfig.dart';
import 'package:mycareer/screens/widgets/textwidget_subtitle.dart';

class PortfolioGridviewWidget extends StatelessWidget {
  const PortfolioGridviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(260),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 137,
          childAspectRatio: 0.5,
          // crossAxisSpacing: 20,
          // mainAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          return SizedBox(
            child: Column(
              children: [
                Container(
                  height: getHeight(90),
                  width: getWidth(130),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(getHeight(12)),
                    color: Colors.orange,
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/portfolio.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  margin: EdgeInsets.only(
                    left: getWidth(10),
                    right: getWidth(10),
                    bottom: getHeight(10),
                  ),
                ),
                TextWidgetSubtitle(text: "Dscription")
              ],
            ),
          );
        },
      ),
    );
  }
}
