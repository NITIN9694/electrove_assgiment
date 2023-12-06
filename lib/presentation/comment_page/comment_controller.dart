
import 'package:get/get.dart';


class CommentController extends GetxController{
  var userImage ="".obs;
  var userName ="".obs;
  var post ="".obs;
  var desc ="".obs;
  var likeCount ="".obs;
  var commentCount ="".obs;
  var isLike = false.obs;

  @override
  void onInit() {
    userImage.value= Get.arguments["userImage"];
    userName.value= Get.arguments["userName"];
    post.value= Get.arguments["post"];
    desc.value= Get.arguments["desc"];

    likeCount.value= Get.arguments["likeCount"];
    commentCount.value= Get.arguments["commentCount"];
    isLike.value= Get.arguments["isLike"];

    super.onInit();
  }

}