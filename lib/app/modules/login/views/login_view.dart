import 'package:ecommerce/app/modules/login/controllers/login_controller.dart';
import 'package:ecommerce/app/shared/components/app_input.dart';
import 'package:ecommerce/app/shared/components/default_button.dart';
import 'package:ecommerce/app/shared/consts/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            SizedBox(height: 30.h),
            AppInput(
              labelText: "Telefone",
              onChanged: controller.setEmail,
              controller: controller.emailController,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20.h),
            AppInput(
              labelText: "Senha",
              onChanged: controller.setPassword,
              controller: controller.passwordController,
              keyboardType: TextInputType.phone,
              obscure: true,
            ),
            SizedBox(height: 60.h),
            Obx(
              () => DefaultButton(
                text: "Fazer login",
                onPressed: controller.handleNavigate,
                isLoading: controller.isLoading.value,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
