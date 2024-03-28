import '../../../core/app_export.dart';
import '../models/registration_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the RegistrationScreen.
///
/// This class manages the state of the RegistrationScreen, including the
/// current registrationModelObj
class RegistrationController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

  Rx<RegistrationModel> registrationModelObj = RegistrationModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> isShowPassword1 = true.obs;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    passwordController.dispose();
    passwordController1.dispose();
  }
}
