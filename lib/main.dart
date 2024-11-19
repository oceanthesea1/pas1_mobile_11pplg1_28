import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas1_mobile_11pplg1_28/bindings/app_bindings.dart';
import 'package:pas1_mobile_11pplg1_28/login_page_folder/login_page.dart';
import 'package:pas1_mobile_11pplg1_28/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => LoginPage()),
        GetPage(
          name: '/homepage',
          page: () => HomePage(),
          bindings: [AppBindings()],
        ),
      ],
    );
  }
}
