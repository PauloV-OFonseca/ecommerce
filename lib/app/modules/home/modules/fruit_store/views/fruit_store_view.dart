import 'package:ecommerce/app/modules/home/modules/fruit_store/components/fruit_tile.dart';
import 'package:ecommerce/app/modules/home/modules/fruit_store/controllers/fruit_store_controller.dart';
import 'package:ecommerce/app/shared/components/app_input.dart';
import 'package:ecommerce/app/shared/components/default_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FruitStoreView extends GetView<FruitStoreController> {
  const FruitStoreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Frutas")),
      body: Obx(
        () => Padding(
          padding: EdgeInsets.all(16),
          child: Stack(
            fit: StackFit.expand,
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    AppInput(
                      controller: controller.filterController,
                      labelText: "Insira o nome da fruta desejada",
                      onChanged: controller.setFilterText,
                      height: 30,
                      width: 328,
                      horizontalMargin: 5,
                    ),
                    SizedBox(height: 10),
                    ...controller.fruitItems
                        .where((e) => e.fruitItem.name.toLowerCase().contains(
                              controller.filterText.value.toLowerCase(),
                            ))
                        .map(fruitModelToTile)
                        .toList(),
                  ],
                ),
              ),
              controller.canGoToShoppingCart
                  ? Positioned(
                      child: DefaultButton(
                        width: 328,
                        height: 40,
                        text: "Acessar o carrinho",
                        onPressed: () => handleGoToShoppingCart(),
                        isLoading: false,
                      ),
                      bottom: 0,
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }

  fruitModelToTile(dynamic fruit) => FruitTile(
        name: fruit.fruitItem.name,
        price: fruit.fruitItem.price,
        photo: fruit.fruitItem.photo,
        fruitQuantity: fruit.quantity,
      );

  handleGoToShoppingCart() {
    controller.setShoppingCart();
    controller.navigateToShoppingCart();
  }
}
