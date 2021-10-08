import 'package:ecommerce/app/modules/home/modules/fruit_store/components/fruit_tile.dart';
import 'package:ecommerce/app/modules/home/modules/fruit_store/controllers/fruit_store_controller.dart';
import 'package:ecommerce/app/shared/components/default_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FruitStoreView extends GetView<FruitStoreController> {
  const FruitStoreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Frutas")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Stack(
          fit: StackFit.expand,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  ...controller.fruitItems
                      .where((e) => e.name.contains(
                            controller.filterText.value,
                          ))
                      .map(fruitModelToTile)
                      .toList(),
                ],
              ),
            ),
            Obx(
              () => controller.canGoToShoppingCart
                  ? Positioned(
                      child: DefaultButton(
                        width: 328,
                        height: 50,
                        text: "Acessar o carrinho",
                        onPressed: () {},
                        isLoading: false,
                      ),
                      bottom: 0,
                    )
                  : Container(),
            ),
          ],
        ),
      ),
    );
  }

  fruitModelToTile(dynamic fruit) => FruitTile(
        name: fruit.name,
        price: fruit.price,
        photo: fruit.photo,
        fruitQuantity: controller.handleQuantity(fruit.name),
      );
}
