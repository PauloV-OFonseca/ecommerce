import 'package:ecommerce/app/shared/consts/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FruitTile extends StatelessWidget {
  final String title;
  final String photo;
  final fruitQuantity;
  final Function() setSubtract;
  final Function() setAdd;
  const FruitTile({
    Key? key,
    required this.title,
    required this.photo,
    this.fruitQuantity,
    required this.setSubtract,
    required this.setAdd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: 65,
        width: 328,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(left: 15, right: 15),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blueGrey.shade300),
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(photo),
                ),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
            ),
            SizedBox(width: 20),
            Text(title, style: TextStyles.BOX_TYPE_TEXT_STYLE),
            Spacer(),
            GestureDetector(
              child: Icon(Icons.horizontal_rule_rounded, size: 20),
              onTap: setSubtract,
            ),
            Container(
              height: 30,
              width: 30,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueGrey.shade300),
              ),
              child: Center(child: Text(fruitQuantity.toString())),
            ),
            GestureDetector(
              child: Icon(Icons.add, size: 20),
              onTap: setAdd,
            ),
          ],
        ),
      ),
    );
  }
}
