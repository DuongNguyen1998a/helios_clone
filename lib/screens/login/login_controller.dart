import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helios_clone/utils/functions/utils_function.dart';

class LoginController extends GetxController {
  var loginFormKey = GlobalKey<FormState>();
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  var isShowPassword = false.obs;
  var isSeller = false.obs;

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void togglePassword() {
    isShowPassword.value = !isShowPassword.value;
  }

  void toggleSeller(bool value) {
    isSeller(value);
  }

  void onLoginClick(BuildContext context) {
    if (!loginFormKey.currentState!.validate()) {
      return;
    } else {
      // close soft keyboard
      FocusScope.of(context).unfocus();
      // onLogin
      String username = usernameController.text.toString();
      String password = passwordController.text.toString();
      if (username.contains('duong') && password.contains('123456')) {
        UtilsFunction.showToast('Login Successfully');
      } else {
        UtilsFunction.showNotification(
          'Thông báo',
          'Thông tin tài khoản không chính xác',
          Colors.redAccent,
          Icons.close,
          Colors.white,
        );
      }
    }
  }
}
