import 'package:ecommerce/app/shared/components/default_button.dart';
import 'package:ecommerce/app/shared/consts/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DefaultAlert extends StatelessWidget {
  final String title;
  final String content;
  const DefaultAlert({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      child: AlertDialog(
        title: Center(
          child: Text(
            title,
            style: TextStyles.ALERT_DIALOG_TITLE_TEXT_STYLE,
            textAlign: TextAlign.center,
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              content,
              style: TextStyles.ALERT_DIALOG_CONTENT_TEXT_STYLE,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            DefaultButton(
              text: "Retornar",
              onPressed: Get.back,
              isLoading: false,
            ),
          ],
        ),
      ),
    );
  }
}
