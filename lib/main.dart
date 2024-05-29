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
    const GetMaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Chatacter Demo',
      theme: ThemeData.dark(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const Home()),
        GetPage(name: '/chat', page: () => const Chat()),
      ],
    );
  }
}
