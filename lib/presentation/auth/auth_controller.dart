
import 'package:electroves/infrastructure/theme/colors.theme.dart';
import 'package:electroves/infrastructure/theme/text.theme.dart';
import 'package:electroves/infrastructure/utills/snackbar.util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../infrastructure/navigation/routes.dart';
class AuthController extends GetxController{
var phoneNumberController = TextEditingController();
var password = TextEditingController();
var phoneNumberValue = "".obs;
var passwordValue = "".obs;


onTapLogin(){
  print("phoneNumberValue ${phoneNumberController.text}");
  print("passwordValue ${password.text}");
  if(phoneNumberController.text.isNotEmpty && password.text.isNotEmpty){
    if(password.text =="123123"){
      Get.offAllNamed(Routes.home);
    }else{
      SnackBarUtil.showWarning(message: "Password is Not Correct");
    }
  }else{
    SnackBarUtil.showError(message: "Mobile Number and Password Require!");
  }


}

 authTextFiled(TextEditingController textEditingController,String hintText,TextInputType textInputType,String textValue){
   return SizedBox(
     height: 40,
     child: TextFormField(
       controller: textEditingController,
       onChanged: (value){
         textValue = value;
       },
       keyboardType: textInputType,
       maxLength: 10,

       style: regularTextStyle(fontSize: dimen15, color: Colors.black),
       decoration: InputDecoration(
         fillColor: ColorsTheme.colF9,
           counterText: "",
         filled: true,
         hintText: hintText,
         border: OutlineInputBorder(

           borderSide: BorderSide.none,
           borderRadius: BorderRadius.circular(10)
         ),
         hintStyle: regularTextStyle(fontSize: dimen13, color: ColorsTheme.colBlack)
       )
     ),
   );
 }
}