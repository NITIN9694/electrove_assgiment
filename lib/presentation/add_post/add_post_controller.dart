
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
class AddPostController extends GetxController{
  var imagePath = "".obs;

  pickImage(ImageSource imageSource) async {

    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: imageSource);
    print('picked image');

    if (image!.path.isNotEmpty) {
      imagePath.value = image.path;


    }
  }
}