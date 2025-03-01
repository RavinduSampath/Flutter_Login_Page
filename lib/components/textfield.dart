import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
final controller;
final String hintText;
final bool obscureText;



const Textfield({
  super.key,
  required this.controller,
  required this.hintText,
  required this.obscureText,
});
  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              
                child:TextField(
                decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                  
                ),
                fillColor: Colors.grey.shade200,
                filled: true,
                hintText: hintText,

              ),
            ),
          );
  }
}