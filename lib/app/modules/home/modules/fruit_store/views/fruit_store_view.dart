import 'package:ecommerce/app/modules/home/modules/fruit_store/controllers/fruit_store_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FruitStoreView extends GetView<FruitStoreController> {
  const FruitStoreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Frutas")),
      body: Center(
        child: Column(),
      ),
    );
  }
}
