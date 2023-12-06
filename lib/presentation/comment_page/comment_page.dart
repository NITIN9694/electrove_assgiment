import 'dart:ffi';

import 'package:electroves/infrastructure/navigation/routes.dart';
import 'package:electroves/infrastructure/theme/colors.theme.dart';
import 'package:electroves/infrastructure/theme/text.theme.dart';
import 'package:electroves/presentation/comment_page/comment_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CommentPage extends GetView<CommentController> {
  const CommentPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: Get.height / 12,
                  width: Get.width,

                  color: ColorsTheme.colSecondary,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              controller.userImage.toString(),
                              height: 34,
                              width: 34,
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Text(
                              controller.userName.toString(),
                              style: regularTextStyle(
                                  fontSize: dimen14, color: Colors.white),
                            ),
                          ],
                        ),
                        Spacer(),
                        InkWell(
                          onTap: (){
                            Get.back();
                          },
                          child: Image.asset("assets/images/ic_cross.png" ,
                            height: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Obx(
                  () => Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(controller.post.value.toString()),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Obx(
                              () => Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  controller.isLike.value
                                      ? InkWell(
                                          onTap: () {
                                            controller.isLike.value = false;
                                          },
                                          child: Image.asset(
                                            "assets/images/ic_like_selected.png",
                                            height: 18,
                                            width: 18,
                                          ),
                                        )
                                      : InkWell(
                                          onTap: () {
                                            controller.isLike.value = true;
                                          },
                                          child: Image.asset(
                                            "assets/images/ic_like_unselected.png",
                                            height: 18,
                                            width: 18,
                                          ),
                                        ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    controller.likeCount.toString(),
                                    style: regularTextStyle(
                                        fontSize: dimen12,
                                        color: ColorsTheme.colBlack),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  controller.commentCount.toString(),
                                  style: regularTextStyle(
                                      fontSize: dimen12,
                                      color: ColorsTheme.colBlack),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/images/ic_comment.png",
                                    height: 18,
                                    width: 18,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          controller.desc.toString(),
                          style: regularTextStyle(
                              fontSize: dimen12, color: ColorsTheme.colBlack),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black.withOpacity(0.3),
                )
              ],
            )),
            _chatInput()
          ],
        ),
      ),
    );
  }

  Widget _chatInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 40,
                  child: TextFormField(
                      maxLength: 10,
                      style: regularTextStyle(
                          fontSize: dimen15, color: Colors.black),
                      decoration: InputDecoration(
                          fillColor: ColorsTheme.colF9,
                          counterText: "",
                          filled: true,
                          hintText: "Write a Comment",
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10)),
                          hintStyle: regularTextStyle(
                              fontSize: dimen13, color: ColorsTheme.colBlack))),
                )),
              ],
            ),
          )),
          InkWell(
              onTap: () {},
              child: Image.asset(
                "assets/images/ic_post.png",
                height: 30,
              )),
        ],
      ),
    );
  }
}
