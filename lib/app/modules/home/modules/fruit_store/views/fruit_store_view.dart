import 'package:ecommerce/app/modules/home/modules/fruit_store/components/fruit_tile.dart';
import 'package:ecommerce/app/modules/home/modules/fruit_store/controllers/fruit_store_controller.dart';
import 'package:ecommerce/app/shared/components/app_input.dart';
import 'package:ecommerce/app/shared/components/default_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FruitStoreView extends GetView<FruitStoreController> {
  const FruitStoreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Frutas")),
      body: Obx(
        () => Padding(
          padding: EdgeInsets.all(16.w),
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
                      height: 30.h,
                      width: 328.w,
                      horizontalMargin: 5.w,
                    ),
                    SizedBox(height: 10.h),
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
                        width: 328.w,
                        height: 40.w,
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
