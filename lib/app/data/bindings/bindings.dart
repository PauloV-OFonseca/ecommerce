import 'package:ecommerce/app/data/repositories/fruit_store_repository.dart';
import 'package:ecommerce/app/data/stores/shopping_cart_store.dart';
import 'package:ecommerce/app/modules/home/modules/fruit_store/controllers/fruit_store_controller.dart';
import 'package:ecommerce/app/modules/home/modules/shopping_cart/controllers/shopping_cart_controller.dart';
import 'package:ecommerce/app/modules/login/controllers/login_controller.dart';
import 'package:ecommerce/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
      fenix: true,
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
      fenix: true,
    );
    Get.lazyPut<FruitStoreController>(
      () => FruitStoreController(Get.find<FruitStoreRepository>()),
      fenix: true,
    );
    Get.lazyPut<FruitStoreRepository>(
      () => FruitStoreRepository(),
      fenix: true,
    );
    Get.lazyPut<ShoppingCartStore>(
      () => ShoppingCartStore(),
      fenix: true,
    );
    Get.lazyPut<ShoppingCartController>(
      () => ShoppingCartController(),
      fenix: true,
    );
  }
}
