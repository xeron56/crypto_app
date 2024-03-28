import '../../../core/app_export.dart';
import '../models/sign_in_three_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignInThreeScreen.
///
/// This class manages the state of the SignInThreeScreen, including the
/// current signInThreeModelObj
class SignInThreeController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignInThreeModel> signInThreeModelObj = SignInThreeModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    passwordController.dispose();
  }
}
