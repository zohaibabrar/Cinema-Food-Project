// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class loginCredentials extends StatelessWidget {
  const loginCredentials({
    Key? key,
    required this.emailController,
    required this.hintText,
  }) : super(key: key);

  final TextEditingController emailController;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextField(
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
          ),
          controller: emailController,
        ),
      ),
    );
  }
}
