
import 'package:get/get.dart';

import '../home/home_controller.dart';

class FeedPageController extends GetxController {

  var postFeedList = <PostFeedModel>[].obs;


  @override
  void onInit() {
    setPostFeed();
  }

  setPostFeed(){
    postFeedList.add(PostFeedModel(userImage: "assets/images/avatar 1.png",userName: "Ankit Rastogi",date: "posted 30 minutes ago",postImage: "assets/images/posted image 1.png",likeCount: 105,isLike: false,commentCount: 12,desc: "Plantation Activity made fun!"));
    postFeedList.add(PostFeedModel(userImage: "assets/images/avatar 2.png",userName: "Kalpana",date: "posted 5 hours ago",postImage: "assets/images/posted image 2.png",likeCount: 89,isLike: false,commentCount: 19,desc: "Fitness check, which team will win?"));

    postFeedList.add(PostFeedModel(userImage: "assets/images/avatar 1.png",userName: "Ankit Rastogi",date: "posted 10 minutes ago",postImage: "assets/images/posted image 1.png",likeCount: 4,isLike: false,commentCount: 2,desc: "made fun!"));

  }
}

