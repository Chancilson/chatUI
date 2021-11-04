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
  final double? borderRadius;
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
    this.borderRadius,
    this.textColor = Colors.white,
    this.borderColor = Colors.transparent,
    this.borderWidth = 0,
    this.beginColor = 0xFF000000,
    this.endColor = 0xFF202020,
    this.onTap, this.marginLeft = 0,
    this.marginRight = 0, 
    this.marginTop = 0,
    this.marginBottom = 0,
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
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(100)),
        boxShadow: const [
          BoxShadow(color: Colors.grey, offset: Offset(0, 4), blurRadius: 5.0)
        ],
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
