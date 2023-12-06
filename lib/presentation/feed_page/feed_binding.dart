

import 'package:electroves/presentation/feed_page/feed_controller.dart';
import 'package:get/get.dart';



class  FeedPageBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<FeedPageController>(() => FeedPageController());
  }

}