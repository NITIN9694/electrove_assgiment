// ignore_for_file: depend_on_referenced_packages

import 'package:electroves/infrastructure/theme/colors.theme.dart';
import 'package:electroves/presentation/splash/splash_controller.dart';
import 'package:flutter/material.dart';

import '../../infrastructure/core/base/base_view.dart';
import 'package:get/get.dart';

class SplashPage extends BaseView<SplashController> {
  SplashPage({super.key});

  @override
  Widget body(BuildContext context) {
    return SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage( "assets/images/bg.png",),fit: BoxFit.cover)
          ),
          child: Center(
           child: Container(
             padding: const EdgeInsets.symmetric(horizontal: 60,vertical: 30),
             decoration: BoxDecoration(
                 color: ColorsTheme.colWhite,
                 borderRadius: BorderRadius.circular(20)
             ),
             child: AnimatedBuilder(
               animation: controller.animationController,
               builder: (context, child) {
                 return Image.asset(
                   "assets/images/login_logo.png",
                   width: controller.animation.value,
                   height: controller.animation.value,
                 );
               },
             ),


           ),
          ),
        ));
  }
}


