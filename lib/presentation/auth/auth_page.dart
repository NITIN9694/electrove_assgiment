import 'package:electroves/infrastructure/theme/colors.theme.dart';
import 'package:electroves/infrastructure/theme/text.theme.dart';
import 'package:electroves/presentation/auth/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class AuthPage extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: ColorsTheme.colF9,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                "assets/images/login_bottom bg.png",
              ),
            ),
            Positioned(
                left: 20,
                right: 20,
                top: 30,
                child: Container(
                  height: 368,
                  width: 335,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3))
                      ]),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: 118,
                            child: Image.asset(
                              "assets/images/login_logo.png",
                            )),
                        const SizedBox(
                          height: 22,
                        ),
                        controller.authTextFiled(controller.phoneNumberController,
                            "Mobile Number", TextInputType.number,controller.phoneNumberValue.value),
                        const SizedBox(
                          height: 18,
                        ),
                        controller.authTextFiled(controller.password,
                            "Password", TextInputType.text,controller.passwordValue.value),
                        const SizedBox(
                          height: 18,
                        ),
                        InkWell(
                          onTap: (){
                            controller.onTapLogin();
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  ColorsTheme.colPrimary,
                                  ColorsTheme.colSecondary
                                ],

                              )
                            ),
                            child: Center(
                              child: Text("Login",
                              style: regularTextStyle(fontSize: dimen14, color: ColorsTheme.colWhite),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
            Positioned(
                left: 0,right: 0,
                top: 130,
                bottom: 0,
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("GOA",
                style: boldTextStyle(fontSize: dimen24, color: ColorsTheme.colSecondary),
                ),
                Text("5 Jan - 8 Jan",
                  style: regularTextStyle(fontSize: dimen16, color: ColorsTheme.colSecondary),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
