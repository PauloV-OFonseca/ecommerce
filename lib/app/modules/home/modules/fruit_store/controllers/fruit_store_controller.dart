import 'package:get/get.dart';

class FruitStoreController extends GetxController {
  RxInt appleQuantity = 0.obs;
  RxInt pearQuantity = 0.obs;
  RxInt bananaQuantity = 0.obs;
  RxInt pineappleQuantity = 0.obs;
  RxInt mangoQuantity = 0.obs;

  setAppleQuantity(int value) {
    if (validateQuantity(value)) appleQuantity.value = value;
  }

  setPearQuantity(int value) {
    if (validateQuantity(value)) pearQuantity.value = value;
  }

  setBananaQuantity(int value) {
    if (validateQuantity(value)) bananaQuantity.value = value;
  }

  setPineappleQuantity(int value) {
    if (validateQuantity(value)) pineappleQuantity.value = value;
  }

  setMangoQuantity(int value) {
    if (validateQuantity(value)) mangoQuantity.value = value;
  }

  bool validateQuantity(int value) {
    if (value < 0) return false;
    return true;
  }
}
