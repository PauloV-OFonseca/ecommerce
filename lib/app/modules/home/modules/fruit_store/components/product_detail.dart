import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/app/shared/components/default_button.dart';
import 'package:ecommerce/app/shared/components/default_circular_progress_indicator.dart';
import 'package:ecommerce/app/shared/consts/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetail extends StatelessWidget {
  final String name;
  final RxInt quantity;
  final String photo;
  const ProductDetail({
    Key? key,
    required this.name,
    required this.quantity,
    required this.photo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      child: AlertDialog(
        title: Center(
          child: Text(
            name,
            style: TextStyles.ALERT_DIALOG_TITLE_TEXT_STYLE,
            textAlign: TextAlign.center,
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 50,
              height: 50,
              child: CachedNetworkImage(
                imageUrl: photo,
                fit: BoxFit.cover,
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                placeholder: (context, url) =>
                    DefaultCircularProgressIndicator(),
                errorWidget: (context, url, error) => Container(),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Icon(Icons.horizontal_rule_rounded, size: 20),
                  onTap: setSubtract,
                ),
                SizedBox(width: 10),
                Obx(
                  () => Container(
                    height: 30,
                    width: 30,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueGrey.shade300),
                    ),
                    child: Center(child: Text(quantity.value.toString())),
                  ),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  child: Icon(Icons.add, size: 20),
                  onTap: setadd,
                ),
              ],
            ),
            SizedBox(height: 10),
            DefaultButton(
              text: "Concluído",
              onPressed: Get.back,
              isLoading: false,
            ),
          ],
        ),
      ),
    );
  }

  setSubtract() => quantity.value--;

  setadd() => quantity.value++;
}
