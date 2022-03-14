import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

class UtilsFunction {
  static void showToast(String message) {
    BotToast.showText(
      text: message,
      textStyle: const TextStyle(
        fontSize: 12,
        color: Colors.white,
      ),
    );
  }

  static void showNotification(String? title, String? subTitle,
      Color backgroundColor, IconData icon, Color iconColor) {
    BotToast.showSimpleNotification(
      title: title!,
      titleStyle: const TextStyle(color: Colors.white, fontSize: 20),
      subTitle: subTitle!,
      subTitleStyle: const TextStyle(color: Colors.white, fontSize: 12),
      backgroundColor: backgroundColor,
      closeIcon: Icon(
        icon,
        color: iconColor,
      ),
      animationDuration: const Duration(milliseconds: 200),
      animationReverseDuration: const Duration(milliseconds: 200),
      duration: const Duration(seconds: 2),
    );
  }
}
