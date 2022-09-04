import 'package:badges/badges.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:salamshop/logic/controllers/theme_controller.dart';

import 'controllers/salam_main_controller.dart';

class SalamMain extends StatelessWidget {
  SalamMain({Key? key}) : super(key: key);

  DatabaseReference ref = FirebaseDatabase.instance.ref("users/13");

  @override
  Widget build(BuildContext context) {
    var controllers = Get.find<SalamMainController>();

    return Scaffold(
      appBar: AppBar(
        actions: [
          GetBuilder<SalamMainController>(builder: (logic) {
            return Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Badge(
                position: BadgePosition.topStart(top: 0, start: -10),
                // animationDuration: const Duration(milliseconds: 1300),
                // animationType: BadgeAnimationType.slide,
                badgeContent: Text(
                  logic.bagdesCount.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
                child: Icon(Icons.shopping_basket),
              ),
            );
          })
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GetBuilder<SalamMainController>(
              builder: (_) {
                return Text(controllers.myText.value);
              },
            ),
            GetX<SalamMainController>(
              // init: SalamMainController(),

              builder: (_) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        controllers.getBadge();
                        // controllers.getStream();
                        /*controllers.getData();


                        controllers.changeText();*/
                        /* Get.snackbar(
                          "Hello",
                          "Thank You!",
                          snackPosition: SnackPosition.BOTTOM,
                          colorText: Colors.white,
                          borderRadius: 10,
                          backgroundColor: Colors.lightGreen,
                          icon: Image.asset(
                            "assets/images/google.png",
                            height: 25,
                            width: 25,
                           // color: Colors.white,
                          ),
                        );*/
                        /*  Get.defaultDialog(
                            title: "GeeksforGeeks",
                            middleText: "Hello world!",
                            //backgroundColor: Colors.green,
                            titleStyle: TextStyle(color: Colors.white),
                            middleTextStyle: TextStyle(color: Colors.white),
                            textConfirm: "تمام",
                            textCancel: "لا والله",
                            onConfirm: () {
                              Get.back();
                            },
                            cancelTextColor: Colors.black,
                            confirmTextColor: Colors.white,
                            buttonColor: Colors.red,
                            barrierDismissible: false,
                            radius: 50,
                            content: Column(
                              children: [
                                Container(child: Text("Hello 1")),
                                Container(child: Icon(Icons.abc)),
                                Container(child: Image.asset(
                                    'assets/images/forgetpass copy.png')),
                              ],
                            )
                        );*/
                      },
                      child: Text(
                          !controllers.active.value ? 'active' : 'not active'),
                    ),
                    Text(controllers.mText)
                  ],
                );
              },
            ),
            Obx(() {
              return Text(
                controllers.myText.value,
                style: const TextStyle(fontSize: 30),
              );
            }),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () => ThemeController().changesTheme(),
                  child: Text('check email'),
                ),

              ],
            ),
           /* GetBuilder<ThemeController>(builder: (logic) {
              return Text(logic.myThem);
            })*/

          ],
        ),
      ),
    );
  }
}
