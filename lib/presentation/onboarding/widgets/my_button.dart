import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final double width;
  final double height;
  final String title;
  final Color buttonColor;
  final Color titleColor;

  const MyButton({
    Key? key,
    this.width = 150.0,
    this.height = 50.0,
    this.title = 'Tekan Saya',
    this.buttonColor = Colors.blue,
    this.titleColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: buttonColor,
        minimumSize: Size(width, height),
        padding: EdgeInsets.all(16),
      ),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, color: titleColor),
      ),
    );
  }
}
