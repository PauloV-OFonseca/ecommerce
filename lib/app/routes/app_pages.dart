import 'package:ecommerce/app/data/bindings/bindings.dart';
import 'package:ecommerce/app/modules/home/views/home_view.dart';
import 'package:ecommerce/app/modules/login/views/login_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.LOGIN;

  static final routes = [
    getLoginPage(),
    getHomePage()
  ];
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
  );
}