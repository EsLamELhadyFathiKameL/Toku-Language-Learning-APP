import 'package:flutter/material.dart';

class MyHomePageContainer extends StatelessWidget {
  const MyHomePageContainer({
    super.key,
    required this.color,
    required this.text,
    this.onTap,
  });
  final Color color;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 65,
        width: double.infinity,
        color: color,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 16),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontFamily: "Pacifico",
          ),
        ),
      ),
    );
  }
}
