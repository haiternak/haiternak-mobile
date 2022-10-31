import 'package:flutter/material.dart';
import 'package:haiternak_mobile/themes/theme.dart';

class Input extends StatelessWidget {
  final String? placeholder;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Function()? onTap;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final bool autofocus;
  final Color borderColor;
  final Function(String) onSaved;
  final Function(String) validator;

  Input(
      {this.placeholder,
      this.suffixIcon,
      this.prefixIcon,
      this.onTap,
      this.onChanged,
      this.autofocus = false,
      this.borderColor = ArgonColors.border,
      this.controller,
      required this.onSaved,
      required this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: (value) => onSaved(value!),
      validator: (value) => validator(value!),
      cursorColor: ArgonColors.muted,
      onTap: onTap,
      onChanged: onChanged,
      controller: controller,
      autofocus: autofocus,
      style:
          TextStyle(height: 0.85, fontSize: 14.0, color: ArgonColors.initial),
      textAlignVertical: TextAlignVertical(y: 0.6),
      decoration: InputDecoration(
        filled: true,
        fillColor: ArgonColors.white,
        hintStyle: TextStyle(
          color: ArgonColors.muted,
        ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: BorderSide(
              color: borderColor, width: 1.0, style: BorderStyle.solid),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: BorderSide(
              color: borderColor, width: 1.0, style: BorderStyle.solid),
        ),
        hintText: placeholder,
      ),
    );
  }
}
