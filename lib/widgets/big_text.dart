import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  BigText(
      {Key? key,
      this.color = const Color(0xFF332d2d),
      this.size = 20,
      required this.text,
      this.overflow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
          fontFamily: 'RobotoCondensed',
          color: color,
          fontSize: size,
          fontWeight: FontWeight.w400),
    );
  }
}
