import 'package:ecommerce/app/shared/components/app_loading.dart';
import 'package:ecommerce/app/shared/consts/text_styles.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final double height;
  final double width;
  final bool isLoading;
  final Color color;
  final bool isFloating;
  
  const DefaultButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.height = 28,
    this.width = 220,
    required this.isLoading,
    this.color = Colors.purple,
    this.isFloating = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 250),
      child: Container(
        width: width,
        height: 38,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith(getColor),
            elevation: MaterialStateProperty.resolveWith(
              (_) => getElevation(),
            ),
          ),
          onPressed: () {
            FocusScope.of(context).unfocus();
            onPressed();
          },
          child: isLoading
              ? Center(child: AppLoading())
              : Text(
                  text,
                  style: TextStyles.DEFAULT_BUTTON_STYLE,
                  textAlign: TextAlign.center,
                ),
        ),
      ),
    );
  }

  Color getColor(Set<MaterialState> states) => color;

  double getElevation() => isFloating ? 50 : 0;
}
