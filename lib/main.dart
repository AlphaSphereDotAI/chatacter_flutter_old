import 'package:chatacter/Pages/about.dart';
import 'package:chatacter/Pages/chat.dart';
import 'package:chatacter/Pages/home.dart';
import 'package:chatacter/Pages/settings.dart';
import 'package:chatacter/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Client client = Client();
  // client.setEndpoint('https://cloud.appwrite.io/v1').setProject('chatacter');

  Get.put(ChatacterController());
  Get.changeTheme(ThemeData.light());
  print('Get.isDarkMode: ${Get.isDarkMode}');
  runApp(
    GetMaterialApp(
      title: 'Chatacter Demo',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const Home()),
        GetPage(name: '/chat', page: () => const Chat()),
        GetPage(name: '/about', page: () => const About()),
        GetPage(name: '/settings', page: () => const Settings()),
      ],
    ),
  );
}
