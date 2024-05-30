// ignore_for_file: avoid_print

import 'package:chatacter/Pages/chat.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          elevation: 100,
          title: const Text('Home'),
          actions: [
            IconButton(
              icon: const Icon(Icons.info),
              onPressed: () {
                print('Info Button Pressed');
                // card widget
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return const Card(
                      elevation: 0,
                      child: ListTile(
                        title: Text('About Chatacter'),
                        subtitle: Text(
                            'This is a chat bot app. You can chat with different characters. More characters will be added soon.\n\n\nChatacter is developed by\n\t- Mohamed Hisham Abdelzaher\n\t- Yousef Mohamed Abdel-Hay\n\t- Abdelrahman Mostafa Mohamed'),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            double screenWidth = constraints.maxWidth;
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome to Chatacter',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: screenWidth * 0.1,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'This is a chat bot app\nClick the button below to start chatting',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth * 0.03,
                    ),
                  ),
                  const SizedBox(height: 40),
                  FloatingActionButton.extended(
                    onPressed: () {
                      print('New Chat Button Pressed');
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return SizedBox(
                            // height: MediaQuery.of(context).size.height * 0.2,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Card(
                                    child: ListTile(
                                      leading: const Icon(Icons.person),
                                      title: const Text('Napoleon Bonaparte'),
                                      subtitle: const Text('You are now can chat with Napoleon Bonaparte'),
                                      onTap: () {
                                        print('Chat 1 pressed');
                                        Get.to(() => const Chat(character: 'Napoleon Bonaparte'));
                                      },
                                    ),
                                  ),
                                  const Card(
                                    child: ListTile(
                                      leading: Icon(Icons.announcement),
                                      title: Text('Coming Soon...'),
                                      subtitle: Text('More chat options will be available soon'),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    label: const Text('New Chat'),
                    icon: const Icon(Icons.add),
                    // backgroundColor: Theme.of(context).colorScheme.secondary,
                    // foregroundColor: Theme.of(context).colorScheme.onSecondary,
                    elevation: 10,
                    hoverColor: Colors.black45,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
