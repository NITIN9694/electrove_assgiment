// ignore_for_file: depend_on_referenced_packages
import 'package:electroves/infrastructure/navigation/routes.dart';
import 'package:electroves/infrastructure/theme/colors.theme.dart';
import 'package:electroves/infrastructure/theme/text.theme.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../infrastructure/core/base/base_view.dart';
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        drawer: appDrawer(context),
        body: Builder(
          builder: (context)=>Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 220,
                child: Stack(
                  children: [
                    Image.asset("assets/images/home_top_bg.png"),
                    Positioned(
                        top: 20,
                        left: 10,
                        right: 10,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: (){
                                Scaffold.of(context).openDrawer();
                              },
                              child: Image.asset(
                                "assets/images/ic_hamburger.png",
                                height: 20,
                              ),
                            ),
                            Text(
                              "Logo",
                              style: boldTextStyle(
                                  fontSize: dimen20, color: Colors.white),
                            ),
                            Image.asset(
                              "assets/images/ic_notification.png",
                              height: 20,
                            ),
                          ],
                        )),
                    Positioned(
                        bottom: 40,
                        left: 10,
                        right: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Upcoming Events",
                              style: boldTextStyle(
                                  fontSize: dimen13, color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.all(13),
                              width: Get.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Session: Ice Breaker Games Activity",
                                    style: boldTextStyle(
                                        fontSize: dimen12, color: Colors.black),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/ic_calendar.png",
                                        height: 10,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "5 Jan | 1.00 PM - 1.30 PM",
                                        style: regularTextStyle(
                                            fontSize: dimen10,
                                            color: ColorsTheme.colSecondary),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 120,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Image.asset(
                                "assets/images/banner 1.png",
                                fit: BoxFit.fitHeight,
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Image.asset(
                                "assets/images/banner 2.png",
                                fit: BoxFit.fitHeight,
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Image.asset(
                                "assets/images/banner 3.png",
                                fit: BoxFit.fitHeight,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Featured Speakers",
                          style: boldTextStyle(
                              fontSize: dimen14, color: Colors.black),
                        ),
                        Container(
                          padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          margin: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3))
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      child: Image.asset(
                                        "assets/images/speaker avatar.png",
                                        height: 35,
                                        width: 35,
                                      ),
                                    ),
                                    Text(
                                      "Alisha Shikhar",
                                      style: boldTextStyle(
                                          fontSize: dimen10, color: Colors.black),
                                    ),
                                    Text(
                                      "Yoga Expert",
                                      style: regularTextStyle(
                                          fontSize: dimen10, color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Container(
                                height: 90,
                                // Adjust the height of the horizontal divider
                                width: 1,
                                // Width of the divider line
                                color: Colors.black
                                    .withOpacity(0.3), // Customize divider color
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 18.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Session: Way to a Calm Mind",
                                      style: boldTextStyle(
                                          fontSize: dimen10, color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "assets/images/ic_calendar.png",
                                          height: 10,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "5 Jan | 1.00 PM - 1.30 PM",
                                          style: regularTextStyle(
                                              fontSize: dimen10,
                                              color: ColorsTheme.colSecondary),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "What's Happening Around you!",
                          style: boldTextStyle(
                              fontSize: dimen14, color: Colors.black),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ListView.builder(
                            itemCount: controller.postFeedList.length,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding:
                                EdgeInsets.only(top: index == 0 ? 0.0 : 38.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
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
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              controller
                                                  .postFeedList[index].userName
                                                  .toString(),
                                              style: boldTextStyle(
                                                  fontSize: dimen12,
                                                  color: Colors.black),
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
                                    Image.asset(controller
                                        .postFeedList[index].postImage
                                        .toString()),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Obx(() =>  Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            controller.postFeedList[index].isLike!
                                                ? InkWell(
                                              onTap: (){
                                                controller.postFeedList[index].isLike=false;
                                                controller.postFeedList[index].likeCount= controller.postFeedList[index].likeCount! -1;
                                                controller.postFeedList.refresh();
                                              },
                                              child: Image.asset(
                                                "assets/images/ic_like_selected.png",
                                                height: 18,
                                                width: 18,
                                              ),
                                            )
                                                : InkWell(
                                              onTap:(){

                                                controller.postFeedList[index].isLike=true;
                                                controller.postFeedList[index].likeCount= controller.postFeedList[index].likeCount! +1;
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
                                              controller
                                                  .postFeedList[index].likeCount
                                                  .toString(),
                                              style: regularTextStyle(
                                                  fontSize: dimen12,
                                                  color: ColorsTheme.colBlack),
                                            )
                                          ],
                                        ),),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              controller.postFeedList[index]
                                                  .commentCount
                                                  .toString(),
                                              style: regularTextStyle(
                                                  fontSize: dimen12,
                                                  color: ColorsTheme.colBlack),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            InkWell(
                                              onTap: (){
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
                                      controller.postFeedList[index].desc
                                          .toString(),
                                      style: regularTextStyle(
                                          fontSize: dimen12,
                                          color: ColorsTheme.colBlack),
                                    ),
                                  ],
                                ),
                              );
                            })
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
  Widget appDrawer(context){
    return Builder(builder: (context)=>Drawer(
      width: Get.width,
      backgroundColor: ColorsTheme.colSecondary,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(),
              Text("Logo",
                style: boldTextStyle(fontSize: dimen21, color: Colors.white),
              ),
              InkWell(
                onTap: (){
                  Scaffold.of(context).closeDrawer();
                },
                child: Image.asset("assets/images/ic_cross.png",
                  height: 20,
                  width: 20,

                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
         Padding(
           padding: const EdgeInsets.only(right:20.0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Text("Home",
                 style: regularTextStyle(fontSize: dimen14, color: Colors.white),
               ),
               const SizedBox(
                 height: 20,
               ),
               InkWell(
                 onTap: (){
                   Scaffold.of(context).closeDrawer();
                   Get.toNamed(Routes.feedPage);
                 },
                 child: Text("Feed",
                   style: regularTextStyle(fontSize: dimen14, color: Colors.white),
                 ),
               ),

             ],
           ),
         )

        ],
      ),
    ));
  }
}
