import 'package:ecommerce/app/data/bindings/bindings.dart';
import 'package:ecommerce/app/modules/home/modules/fruit_store/views/fruit_store_view.dart';
import 'package:ecommerce/app/modules/home/modules/shopping_cart/views/shopping_cart_view.dart';
import 'package:ecommerce/app/modules/home/views/home_view.dart';
import 'package:ecommerce/app/modules/login/views/login_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.LOGIN;

  static final routes = [getLoginPage(), getHomePage()];
}

GetPage getLoginPage() {
  return GetPage(
    name: _Paths.LOGIN,
    page: () => LoginView(),
    binding: Binding(),
  );
}

GetPage getHomePage() {
  return GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: Binding(),
      children: [getFruitStorePage(), getCartShoppingCartPage()]);
}

GetPage getFruitStorePage() {
  return GetPage(
    name: _Paths.FRUIT_STORE,
    page: () => FruitStoreView(),
    binding: Binding(),
  );
}

GetPage getCartShoppingCartPage() {
  return GetPage(
    name: _Paths.SHOPPING_CART,
    page: () => ShoppingCartView(),
    binding: Binding(),
  );
}
