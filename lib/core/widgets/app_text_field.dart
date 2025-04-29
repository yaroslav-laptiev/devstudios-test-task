import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController? controller;
  final Function(String value) onChanged;
  final TextStyle style;
  final Widget prefixIcon;
  final TextInputType? keyboardType;
  final String? hintText;

  const AppTextField({
    super.key,
    this.controller,
    required this.onChanged,
    required this.style,
    required this.prefixIcon, this.keyboardType, this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: style,
      keyboardType: keyboardType ?? TextInputType.name,

      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(10, 16, 10, 16).r,
        hintText: hintText,
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF414042).withAlpha(600)
          )
        ),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: Color(0xFF414042).withAlpha(600)
            )
        ),
        prefixIcon: prefixIcon,
        prefixIconConstraints: BoxConstraints(
          maxHeight: 20.r,
          maxWidth: 20.r,
        )
      ),
    );
  }
}
