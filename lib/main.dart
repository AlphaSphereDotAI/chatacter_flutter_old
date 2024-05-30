import 'package:chatacter/Pages/chat.dart';
import 'package:chatacter/Pages/home.dart';

// import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Client client = Client();
  // client.setEndpoint('https://cloud.appwrite.io/v1').setProject('chatacter').setSelfSigned(status: true);
  runApp(
    GetMaterialApp(
      title: 'Chatacter Demo',
      initialRoute: '/',
      getPages: [
        GetPage(
            name: '/',
            page: () => const Home(),
            transition: Transition.rightToLeft),
        GetPage(
            name: '/chat',
            page: () => const Chat(),
            transition: Transition.rightToLeft),
      ],
      theme: ThemeData.light(useMaterial3: true),
    ),
  );
}
