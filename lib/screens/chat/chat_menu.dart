import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:mycareer/core/constants/sizeconfig.dart';
import 'package:mycareer/core/theme/app_colors.dart';
import 'package:mycareer/core/theme/app_icons.dart';
import 'package:mycareer/screens/chat/widget/chat_item.dart';

class ChatMenuPage extends StatelessWidget {
  const ChatMenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messeges'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
        centerTitle: true,
        toolbarHeight: getHeight(60),
        backgroundColor: AppColors.textColor,
        iconTheme: const IconThemeData(color: AppColors.white),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: AppIcons.scaffold(),
          ),
          Positioned.fill(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(getHeight(20)),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          getHeight(20),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xff505050),
                            spreadRadius: 0.1,
                            blurRadius: 0.1,
                            offset: Offset(0.5, 0.5),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.only(top: getHeight(20)),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
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
                              size: getHeight(25),
                            ),
                          ),
                        ),
                      ),
                    ).only(bottom: getHeight(30)),
                    SizedBox(
                      height: getHeight(600),
                      child: ListView.builder(
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return const ChatItem();
                          }),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
