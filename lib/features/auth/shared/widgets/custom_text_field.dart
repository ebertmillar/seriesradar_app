import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? label;
  final String? hint;
  final String? errorMessage;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final Color? color;
  final Icon? icon;
  const CustomTextField({
    super.key,
    this.label,
    this.hint,
    this.errorMessage,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.validator,
    this.color,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      onChanged: onChanged,
      validator: validator,
      decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          errorText: errorMessage,
          labelStyle: TextStyle(color: color ?? Colors.black),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: color ?? Colors.black),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: color ?? Colors.black, width: 2.0),
          ),
          icon: icon),
    );
  }
}
