import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas1_mobile_11pplg1_28/controllers/LoginController.dart';
import 'package:pas1_mobile_11pplg1_28/login_page_folder/widgets/my_button.dart';
import 'package:pas1_mobile_11pplg1_28/login_page_folder/widgets/my_text_field.dart';
import 'package:pas1_mobile_11pplg1_28/widgets/my_color_list.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.put(LoginController());

    Get.delete<LoginController>(force: true);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          color: colorBackground,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 40.0),
              const Text(
                'English (UK) ∨',
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 185, 193, 201),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Image.network(
                  "https://img.icons8.com/m_outlined/512/FFFFFF/apple-music.png",
                  width: 270,
                  height: 270,
                ),
              ),
              const SizedBox(height: 30.0),
              MyTextField(
                controller: loginController.usernameController,
                labelText: 'Username',
                isObsecure: false,
                textStyle: const TextStyle(color: colorWhite),
                fillColor: colorTransparent,
                filled: true,
                enabledBorderColor: enabledBorderColor,
                focusedBorderColor: focusedBorderColor,
                borderRadius: 10,
              ),
              const SizedBox(height: 12),
              MyTextField(
                controller: loginController.passwordController,
                labelText: 'Password',
                isObsecure: true,
                textStyle: const TextStyle(color: colorWhite),
                fillColor: colorTransparent,
                filled: true,
                enabledBorderColor: enabledBorderColor,
                focusedBorderColor: focusedBorderColor,
                borderRadius: 10,
              ),
              const SizedBox(height: 12),
              Obx(() {
                return loginController.isLoading.value
                    ? const Center(child: CircularProgressIndicator())
                    : MyButton(
                        borderColor: colorWhite,
                        borderWidth: 2,
                        height: 45,
                        textButton: 'Log in',
                        textColor: colorWhite,
                        backgroundColor: colorTransparent,
                        borderRadius: 40,
                        elevation: 0,
                        onPressed: () {
                          loginController.isLoading.value
                              ? null
                              : loginController.loginUser();
                        },
                      );
              }),
              const SizedBox(height: 16),
              const Text(
                'Forgotten Password?',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
