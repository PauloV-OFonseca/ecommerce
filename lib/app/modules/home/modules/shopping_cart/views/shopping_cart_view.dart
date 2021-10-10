import 'package:ecommerce/app/modules/home/modules/shopping_cart/components/cart_tile.dart';
import 'package:ecommerce/app/modules/home/modules/shopping_cart/controllers/shopping_cart_controller.dart';
import 'package:ecommerce/app/shared/components/default_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShoppingCartView extends GetView<ShoppingCartController> {
  const ShoppingCartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Carrinho")),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.w),
              child: Column(
                children: [
                  if (controller.store.shoppingCartModel.item.isNotEmpty) ...[
                    ...controller.store.shoppingCartModel.item
                        .map(fruitModelToTile)
                        .toList(),
                  ] else ...[
                    SizedBox(height: 200.h),
                    Center(
                      child: Text(
                        "Carrinho vazio :(\nTente fazer algumas compras.",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ]
                ],
              ),
            ),
            if (controller.store.shoppingCartModel.item.isNotEmpty)
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: DefaultButton(
                    width: 320.w,
                    height: 50.h,
                    text: "Finalizar compra",
                    onPressed: () => handlecheckout(context),
                    isLoading: false,
                  ),
                ),
              ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }

  fruitModelToTile(dynamic fruit) => CartTile(
        name: fruit.fruitItem.name,
        price: fruit.fruitItem.price,
        photo: fruit.fruitItem.photo,
        fruitQuantity: fruit.quantity,
      );

  handlecheckout(context) {
    controller.shoppingToPDF();
    controller.navigateToHome(context);
  }
}
