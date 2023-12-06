
import 'package:electroves/presentation/auth/auth_controller.dart';
import 'package:get/get.dart';

class AuthBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
  }

}