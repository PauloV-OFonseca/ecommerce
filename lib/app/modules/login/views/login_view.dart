import 'package:brasil_fields/brasil_fields.dart';
import 'package:ecommerce/app/modules/login/controllers/login_controller.dart';
import 'package:ecommerce/app/shared/components/app_input.dart';
import 'package:ecommerce/app/shared/components/default_button.dart';
import 'package:ecommerce/app/shared/consts/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "E-Commerce",
              textAlign: TextAlign.center,
              style: TextStyles.TITLE_TEXT_STYLE,
            ),
            SizedBox(height: 30),
            AppInput(
              labelText: "Telefone",
              onChanged: controller.setPhone,
              controller: controller.phoneController,
              keyboardType: TextInputType.phone,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                TelefoneInputFormatter()
              ],
            ),
            SizedBox(height: 20),
            AppInput(
              labelText: "Senha",
              onChanged: controller.setPassword,
              controller: controller.passwordController,
              keyboardType: TextInputType.phone,
              obscure: true,
            ),
            SizedBox(height: 60),
            DefaultButton(
              text: "Fazer login",
              onPressed: controller.handleNavigate,
              isLoading: false,
            )
          ],
        ),
      ),
    );
  }

}
