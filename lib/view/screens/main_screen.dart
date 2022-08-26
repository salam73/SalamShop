import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salamshop/routes/routes.dart';
import 'package:salamshop/utils/theme.dart';

import '../../logic/controllers/auth_controller.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final controller = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    // print(auth.currentUser!.displayName);
    //var d = auth.currentUser!.displayName;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
          title: const Text('Salam Shop'),
          centerTitle: true,
          leading: Container(),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_basket),
            ),
          ],
        ),
        body: Container(),
      ),
    );
  }
}
