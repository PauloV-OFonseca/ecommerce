part of 'app_pages.dart';

abstract class Routes {
  static const LOGIN = _Paths.LOGIN;
  static const HOME = _Paths.HOME;
  static const FRUIT_STORE = _Paths.HOME + _Paths.FRUIT_STORE;
}

abstract class _Paths {
  static const LOGIN = '/login';
  static const HOME = '/home';
  static const FRUIT_STORE = '/fruit_store';
}
