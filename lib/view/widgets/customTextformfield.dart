import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final bool obscureText;
  Icon? suffixIcon;
  final Icon? prefixIcon;
  double? fontSize;

   CustomTextFormField({
    required this.controller,
    required this.labelText,
     this.suffixIcon,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
     this.prefixIcon,
     this.fontSize
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: controller,
          validator: validator,
          keyboardType: keyboardType,
          obscureText: obscureText,
          decoration: InputDecoration(
            labelText: labelText,
            labelStyle:TextStyle(
              color: Colors.grey,
              fontSize: fontSize ?? 20,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:const BorderSide(color: Colors.red)

            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),

            ),
            suffixIcon: suffixIcon,
            prefixIcon:prefixIcon,
            fillColor: Colors.white,
            filled: true,
            contentPadding:const EdgeInsets.all(16),
          ),
        ),
        // const SizedBox(height: 10,)
      ],
    );
  }
}