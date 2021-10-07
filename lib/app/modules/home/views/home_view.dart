import 'package:ecommerce/app/modules/home/controllers/home_controller.dart';
import 'package:ecommerce/app/shared/consts/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E-Commerce"),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_basket),
            tooltip: 'Acessa o carrinho de compras',
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10),
            Center(
              child: Text(
                "Seja bem vindo(a)",
                style: TextStyles.WELCOME_TEXT_STYLE,
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 65,
              width: 328,
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueGrey.shade300),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Center(
                child: Text(
                  'Frutas',
                  style: TextStyles.BOX_TYPE_TEXT_STYLE,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
