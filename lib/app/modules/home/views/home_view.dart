import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shop_app/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: const Text(
                "Welcome to home page, click the button below to see all our products"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.PRODUCTS);
              },
              child: Text("See Products"))
        ],
      )),
    );
  }
}
