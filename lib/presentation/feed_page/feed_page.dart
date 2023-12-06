// ignore_for_file: depend_on_referenced_packages
import 'package:electroves/infrastructure/navigation/routes.dart';
import 'package:electroves/infrastructure/theme/colors.theme.dart';
import 'package:electroves/infrastructure/theme/text.theme.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../infrastructure/core/base/base_view.dart';
import 'feed_controller.dart';

class FeedPage extends GetView<FeedPageController> {
  FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: Get.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/top bg.png"),
                      fit: BoxFit.fitWidth)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Image.asset(
                      "assets/images/ic_back.png",
                      height: 20.0,
                      width: 20.0,
                    ),
                  ),
                  Text(
                    "Logo",
                    style:
                        boldTextStyle(fontSize: dimen21, color: Colors.white),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(Routes.addPost);
                    },
                    child: Image.asset(
                      "assets/images/ic_create.png",
                      height: 20.0,
                      width: 20.0,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                  itemCount: controller.postFeedList.length,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(top: index == 0 ? 0.0 : 38.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                controller.postFeedList[index].userImage
                                    .toString(),
                                height: 34,
                                width: 34,
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    controller.postFeedList[index].userName
                                        .toString(),
                                    style: boldTextStyle(
                                        fontSize: dimen12, color: Colors.black),
                                  ),
                                  Text(
                                    controller.postFeedList[index].date
                                        .toString(),
                                    style: regularTextStyle(
                                        fontSize: dimen12,
                                        color: ColorsTheme.colOrange),
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Image.asset(controller.postFeedList[index].postImage
                              .toString()),
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
                                    controller.postFeedList[index].isLike!
                                        ? InkWell(
                                            onTap: () {
                                              controller.postFeedList[index]
                                                  .isLike = false;
                                              controller.postFeedList[index]
                                                  .likeCount = controller
                                                      .postFeedList[index]
                                                      .likeCount! -
                                                  1;
                                              controller.postFeedList.refresh();
                                            },
                                            child: Image.asset(
                                              "assets/images/ic_like_selected.png",
                                              height: 18,
                                              width: 18,
                                            ),
                                          )
                                        : InkWell(
                                            onTap: () {
                                              controller.postFeedList[index]
                                                  .isLike = true;
                                              controller.postFeedList[index]
                                                  .likeCount = controller
                                                      .postFeedList[index]
                                                      .likeCount! +
                                                  1;
                                              controller.postFeedList.refresh();
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
                                      controller.postFeedList[index].likeCount
                                          .toString(),
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
                                    controller.postFeedList[index].commentCount
                                        .toString(),
                                    style: regularTextStyle(
                                        fontSize: dimen12,
                                        color: ColorsTheme.colBlack),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Get.toNamed(Routes.commentPage,
                                          arguments: {
                                            "userImage": controller
                                                .postFeedList[index].userImage
                                                .toString(),
                                            "userName": controller
                                                .postFeedList[index].userName
                                                .toString(),
                                            "post": controller
                                                .postFeedList[index].postImage
                                                .toString(),
                                            "desc": controller
                                                .postFeedList[index].desc
                                                .toString(),
                                            "isLike": controller
                                                .postFeedList[index].isLike,
                                            "likeCount": controller
                                                .postFeedList[index].likeCount
                                                .toString(),
                                            "commentCount": controller
                                                .postFeedList[index]
                                                .commentCount
                                                .toString()
                                          });
                                    },
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
                            controller.postFeedList[index].desc.toString(),
                            style: regularTextStyle(
                                fontSize: dimen12, color: ColorsTheme.colBlack),
                          ),
                        ],
                      ),
                    );
                  }),
            ))
          ],
        ),
      ),
    );
  }
}
