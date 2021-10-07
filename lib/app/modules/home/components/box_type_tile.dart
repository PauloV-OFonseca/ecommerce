import 'package:ecommerce/app/shared/consts/text_styles.dart';
import 'package:flutter/material.dart';

class BoxTypeTile extends StatelessWidget {
  final String title;
  final String photo;
  final Function() onTap;
  const BoxTypeTile(
      {Key? key, required this.title, required this.photo, required this.onTap})
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
          //Image.asset(photo, height: 50, width: 50),
          SizedBox(width: 20),
          Text(title, style: TextStyles.BOX_TYPE_TEXT_STYLE),
          Spacer(),
          GestureDetector(
            onTap: onTap,
            child: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
