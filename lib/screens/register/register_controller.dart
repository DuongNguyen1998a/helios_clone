import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  var registerFormKey = GlobalKey<FormState>();
  var fullNameController = TextEditingController();
  var taxCodeController = TextEditingController();
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  var rePasswordController = TextEditingController();
  var isShowPassword = false.obs;
  var isShowRePassword = false.obs;

  @override
  void dispose() {
    fullNameController.dispose();
    taxCodeController.dispose();
    usernameController.dispose();
    passwordController.dispose();
    rePasswordController.dispose();
    super.dispose();
  }

  void togglePassword() {
    isShowPassword(!isShowPassword.value);
  }

  void toggleRePassword() {
    isShowRePassword(!isShowRePassword.value);
  }

  void doRegister() {
    if (!registerFormKey.currentState!.validate()) {
      return;
    }
    else {

    }
  }
}
