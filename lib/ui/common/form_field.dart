import 'package:flutter/material.dart';

class AppFormField extends StatelessWidget {
  final String initialValue;
  final bool readOnly;
  final bool obscureText;
  final String labelText;
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator<String> validator;

  const AppFormField(
      {Key key,
      this.obscureText = false,
      this.initialValue,
      this.readOnly = false,
      @required this.labelText,
      @required this.onSaved,
      @required this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue ?? '',
      readOnly: readOnly,
      onSaved: onSaved,
      validator: validator,
      obscureText: obscureText,
      style: const TextStyle(color: Colors.black54),
      cursorColor: Colors.black54,
      decoration: InputDecoration(
        labelText: labelText,
        hintStyle: const TextStyle(color: Colors.black38),
      ),
    );
  }
}
