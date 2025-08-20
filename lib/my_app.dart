import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:project_ecommerce_shoes_flutter_2025/common/widjet_app/success_screen/success_screen.dart';
import 'package:project_ecommerce_shoes_flutter_2025/features/authentication/screens/forget_password/forget_password.dart';
import 'package:project_ecommerce_shoes_flutter_2025/features/authentication/screens/forget_password/reset_password.dart';
import 'package:project_ecommerce_shoes_flutter_2025/features/authentication/screens/sign/screens/verification_screen.dart';
import 'package:project_ecommerce_shoes_flutter_2025/features/splach/splach_screen.dart';
import 'package:project_ecommerce_shoes_flutter_2025/navigation_menu.dart';
import 'package:project_ecommerce_shoes_flutter_2025/utils/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: NavigationMenu(),
    );
  }
}