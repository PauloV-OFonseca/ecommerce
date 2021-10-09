import 'package:ecommerce/app/data/repositories/fruit_store_repository.dart';
import 'package:ecommerce/app/data/stores/shopping_cart_store.dart';
import 'package:ecommerce/app/modules/home/models/shopping_cart_model.dart';
import 'package:ecommerce/app/modules/home/modules/fruit_store/models/item_store_model.dart';
import 'package:ecommerce/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FruitStoreController extends GetxController {
  final FruitStoreRepository repository;

  RxList fruitItems = [].obs;
  final filterText = "".obs;
  TextEditingController filterController = TextEditingController();
  final store = Get.find<ShoppingCartStore>();

  FruitStoreController(this.repository);

  @override
  onInit() {
    super.onInit();
    getFruitItems();
  }

  getFruitItems() {
    List<ItemStoreModel> itemList = repository.getFruitItems();
    itemList.forEach((fruitItem) {
      fruitItems.add(Item(fruitItem: fruitItem, quantity: 0.obs));
    });
  }

  setFilterText(String value) => filterText.value = value;

  bool get canGoToShoppingCart {
    int count = 0;
    fruitItems.forEach((fruit) {
      if (fruit.quantity.value > 0) count++;
    });
    if (count > 0) return true;
    return false;
  }

  setShoppingCart() {
    store.shoppingCartModel.item = [];
    fruitItems.forEach((fruitToCart) {
      if (fruitToCart.quantity.value != 0) {
        store.shoppingCartModel.item.add(fruitToCart);
      }
    });
  }

  navigateToShoppingCart() => Get.toNamed(Routes.SHOPPING_CART);
}
