import 'package:flutter/material.dart';
import 'package:get/get.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('About Chatacter'),
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
        ),
        body: const Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('This is a chat bot app. You can chat with different characters. More characters will be added soon.', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text('Chatacter is developed by:', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('\t-\tMohamed Hisham Abdelzaher', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('\t-\tYousef Mohamed Abdel-Hay', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('\t-\tAbdelrahman Mostafa Mohamed', style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
