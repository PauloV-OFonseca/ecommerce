import 'package:ecommerce/app/shared/components/app_input.dart';
import 'package:ecommerce/app/shared/components/default_button.dart';
import 'package:ecommerce/app/shared/consts/text_styles.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
            AppInput(labelText: "Telefone", onChanged: null),
            SizedBox(height: 20),
            AppInput(labelText: "Senha", onChanged: null),
            SizedBox(height: 60),
            DefaultButton(
              text: "Fazer login",
              onPressed: teste,
              isLoading: false,
            )
          ],
        ),
      ),
    );
  }

  teste() {
    return;
  }
}