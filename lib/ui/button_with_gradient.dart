import 'package:flutter/material.dart';

class ButtonWithGradient extends StatelessWidget {
  final Function? onTap;
  final String text;
  final double? fontSize;
  final double? marginLeft;
  final double? marginRight;
  final double? marginTop;
  final double? marginBottom;
  final double? height;
  final double? width;
  final bool activeBoxShadow;
  final double? borderRadius;
  final double? topLeftBorder;
  final double? topRightBorder;
  final double? bottomLeftBorder;
  final double? bottomRightBorder;
  final double? borderWidth;
  final Color? textColor;
  final Color? borderColor;
  final int beginColor;
  final int endColor;
  final FontWeight? fontWeight;

  const ButtonWithGradient({
    Key? key,
    required this.text,
    this.fontWeight,
    this.fontSize,
    this.height,
    this.width = 0,
    this.borderRadius = 0.0,
    this.textColor = Colors.white,
    this.borderColor = Colors.transparent,
    this.borderWidth = 0,
    this.activeBoxShadow = false,
    this.beginColor = 0xFF000000,
    this.endColor = 0xFF202020,
    this.onTap,
    this.marginLeft = 0,
    this.marginRight = 0,
    this.marginTop = 0,
    this.marginBottom = 0,
    this.topLeftBorder = 0,
    this.topRightBorder = 0,
    this.bottomLeftBorder = 0,
    this.bottomRightBorder = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [Color(beginColor), Color(endColor)];
    return Container(
      margin: EdgeInsets.only(
        top: marginTop!,
        left: marginLeft!,
        right: marginRight!,
        bottom: marginBottom!,
      ),
      height: height,
      width: width != 0 ? width : MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: borderRadius != 0
            ? BorderRadius.all(Radius.circular(borderRadius!))
            : BorderRadius.only(
                topLeft:
                    Radius.circular(topLeftBorder! != 0 ? topLeftBorder! : 0),
                topRight:
                    Radius.circular(topRightBorder! != 0 ? topRightBorder! : 0),
                bottomLeft: Radius.circular(
                    bottomLeftBorder! != 0 ? bottomLeftBorder! : 0),
                bottomRight: Radius.circular(
                    bottomRightBorder! != 0 ? bottomRightBorder! : 0),
              ),
        boxShadow: activeBoxShadow ? const [
          BoxShadow(color: Color(0xFF27E150), offset: Offset(0, 4), blurRadius: 12.0)
        ] : null,
      ),
      child: ElevatedButton(
        child: Text(text, style: TextStyle(color: textColor, fontSize: 15.0)),
        onPressed: onTap as void Function()?,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          shadowColor: MaterialStateProperty.all(Colors.transparent),
        ),
      ),
    );
  }
}
