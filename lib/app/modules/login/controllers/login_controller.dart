import 'package:ecommerce/app/routes/app_pages.dart';
import 'package:ecommerce/app/shared/components/default_alert.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController(text: "teste@gmail.com");
  TextEditingController passwordController = TextEditingController(text: "123456");
  final email = "teste@gmail.com".obs;
  final password = "123456".obs;

  @override
  onInit() {
    super.onInit();
  }

  setEmail(String email) => this.email.value = email;
  setPassword(String password) => this.password.value = password;

  bool get validateEmail {
    if (email.isNotEmpty) return true;
    return false;
  }

  bool get validatePassword {
    if (password.isNotEmpty) return password.value.length > 3;
    return false;
  }

  handleNavigate() {
    FirebaseAuth auth = FirebaseAuth.instance;

    if (!validateEmail || !validatePassword)
      callDialog(Get.context);
    else {
      auth
          .signInWithEmailAndPassword(
              email: email.value, password: password.value)
          .then((firebaseUser) {
        Get.offAllNamed(Routes.HOME);
      });
    }
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
