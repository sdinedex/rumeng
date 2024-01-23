import 'package:flutter/material.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    String phone;
    String password;

    return Scaffold(
      body: Column(
        children: [
          TextFormField(),
        ],
      ),
    );
  }
}
