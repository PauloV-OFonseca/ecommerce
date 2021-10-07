import 'package:ecommerce/app/shared/consts/text_styles.dart';
import 'package:flutter/material.dart';

class BoxTypeTile extends StatelessWidget {
  final String title;
  final photo;
  final onTap;
  const BoxTypeTile({Key? key, required this.title, this.photo, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 328,
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.only(left: 15, right: 15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueGrey.shade300),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyles.BOX_TYPE_TEXT_STYLE,
          ),
          Spacer(),
          Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}
