import 'dart:io';

import 'package:electroves/infrastructure/theme/text.theme.dart';
import 'package:electroves/presentation/add_post/add_post_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../infrastructure/theme/colors.theme.dart';

class AddPost extends GetView<AddPostController> {
  const AddPost({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: SingleChildScrollView(
            child: Expanded(
              child: Column(

                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (){
                          Get.back();
                        },
                        child: Image.asset(
                          "assets/images/ic_cross_red.png",
                          height: 30,
                          width: 30,
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Get.back();
                        },
                        child: Image.asset(
                          "assets/images/ic_tick.png",
                          height: 30,
                          width: 30,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3))
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Obx(() => controller.imagePath.value.isNotEmpty?
                          Image.file(  File(controller.imagePath.value))
                            :SizedBox()),
                        TextFormField(
                          style: regularTextStyle(
                              fontSize: dimen14, color: Colors.black),
                          decoration: InputDecoration(
                              hintText: "Write Something",
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              hintStyle: regularTextStyle(
                                  fontSize: dimen14, color: Colors.black)),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      controller.pickImage(ImageSource.gallery);
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: Get.width/3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                          gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [ColorsTheme.colPrimary, ColorsTheme.colSecondary],
                      )),
                      child: Center(
                        child: Text(
                          "Add Image",
                          style: regularTextStyle(
                              fontSize: dimen14, color: ColorsTheme.colWhite),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
