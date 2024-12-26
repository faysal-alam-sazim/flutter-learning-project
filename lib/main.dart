import 'package:coffee_card/buy_now/button.dart';
import 'package:coffee_card/buy_now/image_view.dart';
import 'package:coffee_card/buy_now/product_description.dart';
import 'package:coffee_card/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    home: CustomAppBarScreen(),
  ));
}

class CustomAppBarScreen extends StatelessWidget {
  const CustomAppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());

    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: double.maxFinite,
                  height: 100,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Obx(() => Text("${controller.count}",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold))),
                  )),
              GestureDetector(
                onTap: controller.increament,
                child: Container(
                  width: double.maxFinite,
                  height: 100,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                      child: Text("Increament",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold))),
                ),
              ),
              GestureDetector(
                onTap: controller.decreament,
                child: Container(
                  width: double.maxFinite,
                  height: 100,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                      child: Text("Decreament",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold))),
                ),
              ),
              GestureDetector(
                onTap: () => Get.to(BuyNowPage()),
                child: Container(
                  width: double.maxFinite,
                  height: 100,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                      child: Text("Tap",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold))),
                ),
              ),
            ],
          ),
        ));
  }
}

class BuyNowPage extends StatelessWidget {
  final HomeController controller = Get.find();

  // const BuyNowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: ListView(
        children: [
          ImageViewWidget(),
          Button(text: "Buy Now"),
          ProductDescription(),
        ],
      ),
    );
  }
}
