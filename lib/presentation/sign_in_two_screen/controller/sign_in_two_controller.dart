import '../../../core/app_export.dart';
import '../models/sign_in_two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignInTwoScreen.
///
/// This class manages the state of the SignInTwoScreen, including the
/// current signInTwoModelObj
class SignInTwoController extends GetxController {
  TextEditingController emailController = TextEditingController();

  Rx<SignInTwoModel> signInTwoModelObj = SignInTwoModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }
}
