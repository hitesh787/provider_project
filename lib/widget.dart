import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String? Function(String?)? onChanged;
  final TextInputType? keyboardType;
  final String? hintText;
  // final
  const CustomTextField({Key? key, required this.controller, this.validator, this.keyboardType, this.hintText, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      controller: controller,
      validator: validator,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: hintText,
          icon: const Icon(Icons.email_rounded, color: Colors.black)),
    );
  }
}
