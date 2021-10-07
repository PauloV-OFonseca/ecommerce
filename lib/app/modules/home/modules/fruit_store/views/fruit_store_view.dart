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
        child: Column(
          children: [
            FruitTile(
              title: 'Maçã',
              photo: AssetsPaths.APPLE,
              onTap: () {},
            ),
            FruitTile(
            title: 'Pêra',
            photo: AssetsPaths.PEAR,
            onTap: () {},
          ),
          FruitTile(
            title: 'Banana',
            photo: AssetsPaths.BANANA,
            onTap: () {},
          ),
          FruitTile(
            title: 'Pineapple',
            photo: AssetsPaths.PINEAPPLE,
            onTap: () {},
          ),
          FruitTile(
            title: 'Manga',
            photo: AssetsPaths.MANGO,
            onTap: () {},
          ),
          ],
        ),
      ),
    );
  }
}
