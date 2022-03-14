import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final IconData iconData;
  final IconData? suffixIconData;
  final bool isPassword;
  final Function onSuffixIconClick;
  final String? errorMessage;
  final String? errorMessage1;
  final String? password;
  final TextEditingController mController;
  final TextInputAction textInputAction;

  const CustomTextFormField({
    Key? key,
    required this.labelText,
    this.isPassword = false,
    required this.iconData,
    this.suffixIconData,
    required this.onSuffixIconClick,
    this.errorMessage,
    this.errorMessage1,
    this.password,
    required this.mController,
    required this.textInputAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    );

    OutlineInputBorder errorInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        width: 1,
        color: Colors.red,
      ),
    );

    return TextFormField(
      decoration: InputDecoration(
          isDense: true,
          contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          border: outlineInputBorder,
          errorBorder: errorInputBorder,
          labelText: labelText,
          labelStyle: const TextStyle(
            color: Color.fromRGBO(153, 153, 153, 1),
            fontSize: 12,
            decoration: TextDecoration.underline,
          ),
          hintText: labelText,
          hintStyle: const TextStyle(
            fontSize: 12,
            color: Color.fromRGBO(153, 153, 153, 1),
          ),
          filled: true,
          fillColor: const Color.fromRGBO(239, 239, 239, 1),
          prefixIcon: Icon(
            iconData,
            color: Colors.orange,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              onSuffixIconClick();
            },
            icon: Icon(
              suffixIconData,
              color: Colors.black87,
            ),
          )),
      obscureText: isPassword,
      controller: mController,
      validator: (val) {
        if (val!.isEmpty) {
          return errorMessage;
        } else if (val.isNotEmpty && val != password) {
          return errorMessage1;
        }
        return null;
      },
      textInputAction: textInputAction,
    );
  }
}
