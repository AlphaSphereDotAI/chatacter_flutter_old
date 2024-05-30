import 'package:chatacter/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    print('Chat Page');
    final chatacterController = Get.find<ChatacterController>();
    final TextEditingController textController = TextEditingController();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 100,
          leading: IconButton(
            onPressed: () {
              print('Back to home');
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
          title: Obx(() => Text('Chatting with ${chatacterController.character.value}')),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: chatacterController.responseLength.value,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(chatacterController.response.value),
                    leading: const Icon(Icons.person),
                  );
                },
              ),
            ),
            TextField(
              controller: textController,
              onSubmitted: chatacterController.submitQuery,
              decoration: InputDecoration(
                hintText: 'Enter your message here',
                suffixIcon: IconButton(
                  onPressed: () {
                    chatacterController.submitQuery(textController.text);
                    textController.clear();
                  },
                  icon: const Icon(Icons.send),
                ),
                contentPadding: const EdgeInsets.all(20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
