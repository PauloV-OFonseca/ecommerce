import 'package:ecommerce/app/data/repositories/fruit_store_repository.dart';
import 'package:ecommerce/app/modules/home/modules/fruit_store/models/item_store_model.dart';
import 'package:get/get.dart';

class FruitStoreController extends GetxController {
  final FruitStoreRepository repository;

  RxInt appleQuantity = 0.obs;
  RxInt pearQuantity = 0.obs;
  RxInt bananaQuantity = 0.obs;
  RxInt pineappleQuantity = 0.obs;
  RxInt mangoQuantity = 0.obs;
  List<ItemStoreModel> fruitItems = [];
  final filterText = "".obs;

  FruitStoreController(this.repository);

  @override
  onInit() {
    super.onInit();
    getFruitItems();
  }

  List<ItemStoreModel> getFruitItems() => fruitItems = repository.getFruitItems();

  handleQuantity(String fruit) {
    switch (fruit.toLowerCase()) {
      case "maçã":
        return appleQuantity;
      case "pêra":
        return pearQuantity;
      case "banana":
        return bananaQuantity;
      case "abacaxi":
        return pineappleQuantity;
      case "manga":
        return mangoQuantity;
    }
  }
}
