import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/app/shared/components/default_circular_progress_indicator.dart';
import 'package:ecommerce/app/shared/consts/text_styles.dart';
import 'package:flutter/material.dart';

class FruitTile extends StatelessWidget {
  final String name;
  final double price;
  final String photo;
  final fruitQuantity;
  const FruitTile({
    Key? key,
    required this.name,
    required this.price,
    required this.photo,
    this.fruitQuantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
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
              placeholder: (context, url) => DefaultCircularProgressIndicator(),
              errorWidget: (context, url, error) => Container(),
            ),
          ),
          SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: TextStyles.BOX_TYPE_TEXT_STYLE),
              Text(
                "Preço: $price",
                style: TextStyles.BOX_TYPE_PRICE_STYLE,
              ),
            ],
          ),
          Spacer(),
          Container(
            height: 30,
            width: 30,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueGrey.shade300),
            ),
            child: Center(child: Text(fruitQuantity.toString())),
          ),
        ],
      ),
    );
  }
}
