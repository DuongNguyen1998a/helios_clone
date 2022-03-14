import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helios_clone/screens/login/login_controller.dart';
import 'package:helios_clone/screens/login/widgets/CustomLoginButton.dart';
import 'package:helios_clone/screens/login/widgets/CustomTextFormField.dart';
import 'package:helios_clone/screens/login/widgets/Custom_Logo.dart';
import 'package:helios_clone/screens/register/register_screen.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.put(LoginController());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Form(
              // autovalidateMode: AutovalidateMode.onUserInteraction,
              key: loginController.loginFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  const CustomLogo(),
                  const SizedBox(
                    height: 70,
                  ),
                  CustomTextFormField(
                    labelText: 'Tên đăng nhập',
                    iconData: Icons.person,
                    isPassword: false,
                    suffixIconData: null,
                    onSuffixIconClick: () {},
                    mController: loginController.usernameController,
                    errorMessage: 'Tên đăng nhập không được bỏ trống',
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Obx(
                    () => CustomTextFormField(
                      labelText: 'Mật khẩu',
                      iconData: Icons.password,
                      isPassword:
                          !loginController.isShowPassword.value ? true : false,
                      suffixIconData: !loginController.isShowPassword.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                      onSuffixIconClick: () {
                        loginController.togglePassword();
                      },
                      mController: loginController.passwordController,
                      errorMessage: 'Mật khẩu không được bỏ trống',
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Obx(
                        () => Checkbox(
                            value: loginController.isSeller.value,
                            activeColor: Colors.orange,
                            onChanged: (val) {
                              loginController.toggleSeller(val!);
                            }),
                      ),
                      const Text(
                        'Người bán hàng',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomLoginButton(
                      text: 'Đăng nhập',
                      icon: Icons.login,
                      onLoginClick: () {
                        loginController.onLoginClick(context);
                      }),
                  TextButton(
                    onPressed: () {
                      Get.to(
                        () => const RegisterScreen(),
                        transition: Transition.rightToLeft,
                        duration: const Duration(milliseconds: 500),
                      );
                    },
                    child: const Text(
                      'Bạn chưa có tài khoản ? Đăng ký',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black87,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
