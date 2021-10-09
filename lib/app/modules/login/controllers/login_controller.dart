import 'package:brasil_fields/brasil_fields.dart';
import 'package:ecommerce/app/routes/app_pages.dart';
import 'package:ecommerce/app/shared/components/default_alert.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final phoneNumber = "".obs;
  final password = "".obs;

  @override
  onInit() {
    super.onInit();
  }

  setPhone(String phone) => this.phoneNumber.value = phone;
  setPassword(String password) => this.password.value = password;

  bool get validateNumber {
    if (phoneNumber.isNotEmpty)
      return UtilBrasilFields.obterTelefone(phoneNumber.value, mascara: false)
              .length ==
          10;
    return false;
  }

  bool get validatePassword {
    if (password.isNotEmpty) return password.value.length > 3;
    return false;
  }

  handleNavigate() {
    if (!validateNumber || !validatePassword)
      callDialog(Get.context);
    else
      Get.offAllNamed(Routes.HOME);
  }

  callDialog(context) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return DefaultAlert(
          title: "Erro ao logar",
          content:
              "O Telefone ou senha estão incorretos, por favor verifique os dados e tente novamente!",
        );
      },
    );
  }
}
