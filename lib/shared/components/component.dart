import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  double height = 40,
  Color background = Colors.red,
  bool isUpperCase = true,
  required Function function,
  required String text,
}) =>
    Container(
      color: background,
      height: height,
      width: width,
      child: MaterialButton(
        onPressed: function( String ),
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );

Widget defaultTextFromField({
  required TextEditingController controller,
  required TextInputType textType,
  required IconData prefix,
  required validator,
  IconData? suffix,
  String? label,
  bool obscureText = true,
}) =>
    TextFormField(
      validator: validator,
      controller: controller,
      keyboardType: textType,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
        prefixIcon: Icon(prefix),
      ),
    );
