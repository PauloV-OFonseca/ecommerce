import 'package:ecommerce/app/modules/home/modules/fruit_store/components/fruit_tile.dart';
import 'package:ecommerce/app/modules/home/modules/fruit_store/controllers/fruit_store_controller.dart';
import 'package:ecommerce/app/shared/consts/assets_paths.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FruitStoreView extends GetView<FruitStoreController> {
  const FruitStoreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Frutas")),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              FruitTile(
                title: 'Maçã',
                photo: AssetsPaths.APPLE,
                fruitQuantity: controller.appleQuantity,
                setAdd: () => controller
                    .setAppleQuantity(controller.appleQuantity.value + 1),
                setSubtract: () => controller
                    .setAppleQuantity(controller.appleQuantity.value - 1),
              ),
              FruitTile(
                title: 'Pêra',
                photo: AssetsPaths.PEAR,
                fruitQuantity: controller.pearQuantity,
                setAdd: () => controller
                    .setPearQuantity(controller.pearQuantity.value + 1),
                setSubtract: () => controller
                    .setPearQuantity(controller.pearQuantity.value - 1),
              ),
              FruitTile(
                title: 'Banana',
                photo: AssetsPaths.BANANA,
                fruitQuantity: controller.bananaQuantity,
                setAdd: () => controller
                    .setBananaQuantity(controller.bananaQuantity.value + 1),
                setSubtract: () => controller
                    .setBananaQuantity(controller.bananaQuantity.value - 1),
              ),
              FruitTile(
                title: 'Abacaxi',
                photo: AssetsPaths.PINEAPPLE,
                fruitQuantity: controller.pineappleQuantity,
                setAdd: () => controller.setPineappleQuantity(
                    controller.pineappleQuantity.value + 1),
                setSubtract: () => controller.setPineappleQuantity(
                    controller.pineappleQuantity.value - 1),
              ),
              FruitTile(
                title: 'Manga',
                photo: AssetsPaths.MANGO,
                fruitQuantity: controller.mangoQuantity,
                setAdd: () => controller
                    .setMangoQuantity(controller.mangoQuantity.value + 1),
                setSubtract: () => controller
                    .setMangoQuantity(controller.mangoQuantity.value - 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
