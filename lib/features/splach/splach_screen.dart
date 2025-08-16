import 'package:flutter/material.dart';
import 'package:project_ecommerce_shoes_flutter_2025/utils/constants/images.dart';

class SplachScreen extends StatelessWidget {
  const SplachScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(TImages.spalchAppLogo),
      ),
    );
  }
}
