import 'package:ecommerce/app/shared/components/default_circle_network_image.dart';
import 'package:ecommerce/app/shared/consts/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartTile extends StatelessWidget {
  final String name;
  final double price;
  final String photo;
  final RxInt fruitQuantity;
  const CartTile({
    Key? key,
    required this.name,
    required this.price,
    required this.photo,
    required this.fruitQuantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: 328.w,
      margin: EdgeInsets.all(5.w),
      padding: EdgeInsets.only(left: 15.w, right: 15.w),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueGrey.shade300),
        borderRadius: BorderRadius.all(Radius.circular(5.w)),
      ),
      child: Row(
        children: [
          DefaultCircleNetworkImage(photo: photo),
          Spacer(),
          Container(
            width: 110.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: TextStyles.BOX_TYPE_TEXT_STYLE),
                Text(
                  "Quantidade: ${fruitQuantity.value.toString()} un.",
                  style: TextStyles.BOX_TYPE_PRICE_STYLE,
                ),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
