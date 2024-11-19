import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pas1_mobile_11pplg1_28/widgets/my_color_list.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void onClose() {
    usernameController.clear();
    passwordController.clear();
    super.onClose();
  }

  Future<void> loginUser() async {
    if (usernameController.text.isEmpty || passwordController.text.isEmpty) {
      Get.snackbar(
        'Error',
        'All fields are required!',
        colorText: colorWhite,
        snackPosition: SnackPosition.BOTTOM,
        duration: Duration(seconds: 1),
      );
      return;
    }

    isLoading(true);

    try {
      final response = await http.post(
        Uri.parse('https://mediadwi.com/api/latihan/login'),
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        body: {
          'username': usernameController.text,
          'password': passwordController.text,
        },
      );

      if (response.statusCode == 200) {
        var responseData = jsonDecode(response.body);
        if (responseData['status'] == true) {
          Get.snackbar(
            'Success',
            'Login successful!',
            colorText: colorWhite,
            snackPosition: SnackPosition.BOTTOM,
            duration: Duration(seconds: 1),
          );
          onClose();
          Get.toNamed('/homepage');
        } else {
          Get.snackbar(
            'Error',
            'Login failed. ',
            colorText: colorWhite,
            snackPosition: SnackPosition.BOTTOM,
            duration: Duration(seconds: 1),
          );
        }
      } else {
        Get.snackbar(
          'Error',
          'Failed to connect to server. ',
          colorText: colorWhite,
          snackPosition: SnackPosition.BOTTOM,
          duration: Duration(seconds: 1),
        );
      }
    } catch (e) {
      Get.snackbar(
        'Error',
        'An error occurred. Please try again. ',
        colorText: colorWhite,
        snackPosition: SnackPosition.BOTTOM,
        duration: Duration(seconds: 1),
      );
    } finally {
      isLoading(false);
    }
  }
}
