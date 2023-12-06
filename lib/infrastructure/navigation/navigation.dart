
import 'package:electroves/presentation/add_post/add_post.dart';
import 'package:electroves/presentation/add_post/add_post_binding.dart';
import 'package:electroves/presentation/auth/auth_binding.dart';
import 'package:electroves/presentation/auth/auth_page.dart';
import 'package:electroves/presentation/comment_page/comment_binding.dart';
import 'package:electroves/presentation/comment_page/comment_page.dart';
import 'package:electroves/presentation/feed_page/feed_binding.dart';
import 'package:electroves/presentation/feed_page/feed_page.dart';
import 'package:get/get.dart';

import '../../presentation/home/home_binding.dart';
import '../../presentation/home/home_page.dart';
import '../../presentation/splash/splash_binding.dart';
import '../../presentation/splash/splash_page.dart';
import 'routes.dart';

class AppPages {
  static List<GetPage> pageList = [
    GetPage(
      name: Routes.splash,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),

    GetPage(
      name: Routes.auth,
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500),
      page: () => AuthPage(),
      binding: AuthBinding(),
    ),


    GetPage(
      name: Routes.home,
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500),
      page: () => HomePage(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: Routes.feedPage,
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500),
      page: () => FeedPage(),
      binding: FeedPageBinding(),
    ),

    GetPage(
      name: Routes.addPost,
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500),
      page: () => const AddPost(),
      binding: AddPostBinding(),
    ),
    GetPage(
      name: Routes.commentPage,
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 500),
      page: () =>  CommentPage(),
      binding: CommentBinding(),
    ),

  ];
}
