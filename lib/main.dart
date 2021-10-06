import 'package:ecommerce/app/shared/components/default_button.dart';
import 'package:flutter/material.dart';

import 'app/shared/components/app_input.dart';
import 'app/shared/consts/text_styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
              height: 28,
              isLoading: false,
              color: Colors.purple,
              isFloating: true,
              width: 220,
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
