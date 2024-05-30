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
              Text('This is a chat bot app. You can chat with different characters. More characters will be added soon.'),
              SizedBox(height: 10),
              Text('Chatacter is developed by:'),
              Text('\t-\tMohamed Hisham Abdelzaher'),
              Text('\t-\tYousef Mohamed Abdel-Hay'),
              Text('\t-\tAbdelrahman Mostafa Mohamed'),
            ],
          ),
        ),
      ),
    );
  }
}
