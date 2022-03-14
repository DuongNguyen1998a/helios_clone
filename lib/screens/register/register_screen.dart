import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helios_clone/screens/login/widgets/CustomLoginButton.dart';
import 'package:helios_clone/screens/login/widgets/Custom_Logo.dart';
import 'package:helios_clone/screens/register/register_controller.dart';

import '../login/widgets/CustomTextFormField.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RegisterController registerController = Get.put(RegisterController());
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
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Form(
              key: registerController.registerFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomLogo(),
                  const SizedBox(
                    height: 30,
                  ),
                  Wrap(
                    children: const [
                      Text(
                        'Đăng ký,',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        ' nhập thông tin tài khoản',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomTextFormField(
                    labelText: 'Họ tên',
                    iconData: Icons.label,
                    isPassword: false,
                    suffixIconData: null,
                    onSuffixIconClick: () {},
                    mController: registerController.fullNameController,
                    errorMessage: 'Họ tên không được bỏ trống',
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFormField(
                    labelText: 'Mã số thuế',
                    iconData: Icons.code,
                    isPassword: false,
                    suffixIconData: null,
                    onSuffixIconClick: () {},
                    mController: registerController.taxCodeController,
                    errorMessage: 'Mã số thuế không được bỏ trống',
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFormField(
                    labelText: 'Tên đăng nhập',
                    iconData: Icons.person,
                    isPassword: false,
                    suffixIconData: null,
                    onSuffixIconClick: () {},
                    mController: registerController.usernameController,
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
                          !registerController.isShowPassword.value ? true : false,
                      suffixIconData: !registerController.isShowPassword.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                      onSuffixIconClick: () {
                        registerController.togglePassword();
                      },
                      mController: registerController.passwordController,
                      errorMessage: 'Mật khẩu không được bỏ trống',
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Obx(
                    () => CustomTextFormField(
                      labelText: 'Nhập lại mật khẩu',
                      iconData: Icons.password,
                      isPassword: !registerController.isShowRePassword.value
                          ? true
                          : false,
                      suffixIconData: !registerController.isShowRePassword.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                      onSuffixIconClick: () {
                        registerController.toggleRePassword();
                      },
                      mController: registerController.rePasswordController,
                      errorMessage: 'Nhập lại mật khẩu không được bỏ trống',
                      password: registerController.passwordController.text,
                      errorMessage1: 'Không khớp với mật khẩu',
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomLoginButton(
                      text: 'Đăng ký',
                      icon: Icons.app_registration,
                      onLoginClick: () {
                        registerController.doRegister();
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
