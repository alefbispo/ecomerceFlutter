import 'package:flutter/material.dart';

class MyButtonWidget extends StatelessWidget {
  final String text;
  final Color color;
  final Function() onPressed;

   MyButtonWidget({required this.text,
      required this.color,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: MaterialButton(
        onPressed: onPressed,
        child:  Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            color:  Colors.white,
          ),
        ),
        height: 45,
        elevation: 0,
        color: color,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide.none),
      ),
    );
  }
}
