// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController phoneController = TextEditingController();
  final phoneNumber = "".obs;
  final password = "".obs;

  @override
  onInit() {
    super.onInit();
  }

  setPhone(String phone) => this.phoneNumber.value = phone;
  setPassword(String password) => this.password.value = password;
}
