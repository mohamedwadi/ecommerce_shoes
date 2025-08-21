import 'package:flutter/material.dart';
import 'package:project_ecommerce_shoes_flutter_2025/utils/constants/colors.dart';
import 'package:project_ecommerce_shoes_flutter_2025/utils/helpers/helper_functions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(0),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: THelperFunctions.screenHeight(),
                  ),
                  Positioned(
                    child: Container(
                      height: THelperFunctions.screenHeight() / 2.5,
                      decoration: BoxDecoration(
                          color: TColors.primary,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)
                          )
                      ),
                    ),
                  ),
                  Positioned(
                    top: THelperFunctions.screenHeight() / 2.5 - 20,
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          color: TColors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)
                          )
                      ),
                    ),
                  ),
                  ShapeCircleWhite(
                    topPositioned: -THelperFunctions.screenHeight() / 6,
                    leftPositioned: THelperFunctions.screenWidth() - 150,),
                  ShapeCircleWhite(
                    topPositioned:  THelperFunctions.screenHeight() / 11,
                    leftPositioned: THelperFunctions.screenWidth() - 90,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShapeCircleWhite extends StatelessWidget {
  const ShapeCircleWhite({
    super.key, required this.topPositioned, required this.leftPositioned,
  });

  final topPositioned;
  final leftPositioned;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topPositioned,
      left: leftPositioned,
      child: Container(
        width: THelperFunctions.screenHeight() / 2.5,
        height: THelperFunctions.screenHeight() / 2.5,
        decoration: BoxDecoration(
            color: TColors.textWhite.withOpacity(0.1),
            borderRadius: BorderRadius.circular(500)
        ),
      ),
    );
  }
}

