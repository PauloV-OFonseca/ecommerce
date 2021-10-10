import 'package:ecommerce/app/modules/home/components/box_type_tile.dart';
import 'package:ecommerce/app/modules/home/controllers/home_controller.dart';
import 'package:ecommerce/app/shared/consts/assets_paths.dart';
import 'package:ecommerce/app/shared/consts/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E-Commerce"),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_basket),
            tooltip: 'Acessa o carrinho de compras',
            onPressed: () => controller.navigateToShoppingCart(),
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 10.h),
            Center(
              child: Text(
                "Seja bem vindo(a).\nEscolha uma das opções:",
                style: TextStyles.WELCOME_TEXT_STYLE,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 30.h),
            BoxTypeTile(
              title: "Frutas",
              photo: AssetsPaths.FRUIT_BASKET,
              onTap: controller.navigateToFruitStore,
            ),
            BoxTypeTile(
              title: "Remédios",
              photo: AssetsPaths.MEDICINES,
              onTap: () {},
            ),
            BoxTypeTile(
              title: "Informática",
              photo: AssetsPaths.COMPUTING,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
