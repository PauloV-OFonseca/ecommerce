import 'package:ecommerce/app/modules/home/components/box_type_tile.dart';
import 'package:ecommerce/app/modules/home/controllers/home_controller.dart';
import 'package:ecommerce/app/shared/consts/assets_paths.dart';
import 'package:ecommerce/app/shared/consts/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10),
            Center(
              child: Text(
                "Seja bem vindo(a), escolha uma das opções",
                style: TextStyles.WELCOME_TEXT_STYLE,
              ),
            ),
            SizedBox(height: 30),
            BoxTypeTile(title: "Frutas", photo: AssetsPaths.FRUIT_BASKET),
            BoxTypeTile(title: "Remédios", photo: AssetsPaths.MEDICINES,),
            BoxTypeTile(title: "Informática", photo: AssetsPaths.COMPUTING,),
          ],
        ),
      ),
    );
  }
}
