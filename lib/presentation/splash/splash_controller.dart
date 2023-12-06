import 'dart:async';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../infrastructure/navigation/routes.dart';


class SplashController extends GetxController with GetTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation = 0.obs as Animation<double>;
  final double begin = 70.0;
  final double end = 160.0;

  @override
  void onInit() {

    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    animation = Tween<double>(
      begin: begin,
      end: end,
    ).animate(animationController);
    animation.addListener(() => update());
    animationController.forward();
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        nextScreen();
      }
    });
    super.onInit();
  }

  nextScreen() async {
  Get.offAllNamed(Routes.auth);
  }
}
