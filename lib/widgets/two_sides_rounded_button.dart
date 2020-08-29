import 'package:flamingo_ebook/constants.dart';
import 'package:flutter/material.dart';

class TwoSidesRoundedButton extends StatelessWidget {
  const TwoSidesRoundedButton({
    Key key,
    @required this.text,
    @required this.onPressed,
    this.radius,
  }) : super(key: key);

  final String text;
  final double radius;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 101,
        padding: EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
        decoration: BoxDecoration(
          color: kBlackColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(29),
            bottomRight: Radius.circular(29),
          ),
        ),
      ),
    );
  }
}
