import 'package:ecommerce/app/shared/consts/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BoxTypeTile extends StatelessWidget {
  final String title;
  final String photo;
  final Function() onTap;
  const BoxTypeTile({
    Key? key,
    required this.title,
    required this.photo,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.h,
      width: 328.w,
      margin: EdgeInsets.all(10.w),
      padding: EdgeInsets.only(left: 15.w, right: 15.w),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueGrey.shade300),
        borderRadius: BorderRadius.all(Radius.circular(5.w)),
      ),
      child: Row(
        children: [
          Container(
            width: 50.w,
            height: 50.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(photo),
              ),
              borderRadius: BorderRadius.all(Radius.circular(30.w)),
            ),
          ),
          SizedBox(width: 20.w),
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
