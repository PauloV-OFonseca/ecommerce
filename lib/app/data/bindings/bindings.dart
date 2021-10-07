import 'package:ecommerce/app/modules/home/modules/fruit_store/controllers/fruit_store_controller.dart';
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
      () => FruitStoreController(),
      fenix: true,
    );
  }
}
