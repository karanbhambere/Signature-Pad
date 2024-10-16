import 'package:flutter/material.dart';
import 'package:signature_pad/home_page.dart';

void main() {
  runApp(const SignaturePad());
}

class SignaturePad extends StatelessWidget {
  const SignaturePad({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
