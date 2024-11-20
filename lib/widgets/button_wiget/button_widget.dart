import 'package:flutter/material.dart';

class CustoumButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final VoidCallback onPressed;
  const CustoumButton({
    super.key,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        child: Container(
          height: 55,
          width: 445,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: const Color(0xff262263)),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 23,
                  color: textColor,
                  backgroundColor: backgroundColor),
            ),
          ),
        ));
  }
}

class formCancelButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final VoidCallback onPressed;
  const formCancelButton(
      {super.key,
        required this.text,
        required this.textColor,
        required this.backgroundColor,
        required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        child: Container(
          height: 50,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.fromBorderSide(BorderSide(color: Color(0xff262263))),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 20,
                  color: textColor,
                  backgroundColor: backgroundColor),
            ),
          ),
        ));
  }
}

class formAddButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final VoidCallback onPressed;
  const formAddButton(
      {super.key,
        required this.text,
        required this.textColor,
        required this.backgroundColor,
        required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        child: Container(
          height: 50,
          width: 185,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Color(0xff262263)),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 20,
                  color: textColor,
                  backgroundColor: backgroundColor),
            ),
          ),
        ));
  }
}

class LongButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final VoidCallback onPressed;
  const LongButton(
      {super.key,
        required this.text,
        required this.textColor,
        required this.backgroundColor,
        required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        child: Container(
          height: 55,
          width: 400,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Color(0xff262263)),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 23,
                  color: textColor,
                  backgroundColor: backgroundColor),
            ),
          ),
        ));
  }
}

class ButtonWidgets extends StatelessWidget {
  final String text;
  final Color textColor;
  final VoidCallback onPressed;
  ButtonWidgets(
      {super.key,
        required this.text,
        required this.textColor,
        required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        child: Container(
          height: 40,
          width: 85,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            border: Border.fromBorderSide(BorderSide(color: Color(0xff262263))),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 14,
                color: textColor,
              ),
            ),
          ),
        ));
  }
}
