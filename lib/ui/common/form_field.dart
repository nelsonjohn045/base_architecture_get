import 'package:flutter/material.dart';

import 'package:base_design/utils/colors.dart';

class AppFormField extends StatelessWidget {
  final TextEditingController controller;
  final bool readOnly;
  final Widget suffixIcon;
  final bool obscureText;
  final String labelText;
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator<String> validator;
  final ValueChanged<String> onChange;
  final Widget icon;
  final Color hintColor;
  final int maxLines;

  const AppFormField(
      {Key key,
      this.obscureText = false,
      this.controller,
      this.readOnly = false,
      @required this.labelText,
      this.onSaved,
      this.validator,
      this.onChange,
      this.hintColor,
      this.maxLines,
      this.suffixIcon,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: readOnly,
      onSaved: onSaved,
      onChanged: onChange,
      validator: validator,
      maxLines: maxLines ?? 1,
      obscureText: obscureText,
      style: const TextStyle(color: Colors.black54),
      cursorColor: Colors.black54,
      decoration: InputDecoration(
          prefixIcon: icon,
          labelText: labelText,
          labelStyle: TextStyle(color: hintColor ?? AppColors.kGreen),
          hintStyle: const TextStyle(color: Colors.black38),
          suffixIcon: suffixIcon,
          filled: true,
          fillColor: Colors.white),
    );
  }
}

//With round borders
class AppFormFieldRounded extends StatelessWidget {
  final TextEditingController controller;
  final bool readOnly;
  final Widget suffixIcon;
  final bool obscureText;
  final String labelText;
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator<String> validator;
  final ValueChanged<String> onChange;
  final Widget icon;
  final Color hintColor;
  final int maxLines;

  const AppFormFieldRounded(
      {Key key,
      this.obscureText = false,
      this.controller,
      this.readOnly = false,
      @required this.labelText,
      this.onSaved,
      this.validator,
      this.onChange,
      this.hintColor,
      this.maxLines,
      this.suffixIcon,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: readOnly,
      onSaved: onSaved,
      onChanged: onChange,
      validator: validator,
      maxLines: maxLines ?? 1,
      obscureText: obscureText,
      style: const TextStyle(color: Colors.black54),
      cursorColor: Colors.black54,
      decoration: InputDecoration(
          prefixIcon: icon,
          labelText: labelText,
          labelStyle: TextStyle(color: hintColor ?? AppColors.kGreen),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0))),
          suffixIcon: suffixIcon,
          filled: true,
          fillColor: Colors.white),
    );
  }
}
