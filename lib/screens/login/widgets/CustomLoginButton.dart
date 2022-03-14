import 'package:flutter/material.dart';

class CustomLoginButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function onLoginClick;

  const CustomLoginButton({
    Key? key,
    required this.onLoginClick,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        onLoginClick();
      },
      icon: Icon(icon),
      label: Padding(
        padding: const EdgeInsets.all(15),
        child: Text(text),
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
