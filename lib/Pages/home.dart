// ignore_for_file: avoid_print

import 'package:chatacter/Pages/chat.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          elevation: 50,
          title: const Text('Chatacter Demo'),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            double screenWidth = constraints.maxWidth;
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome to Chatacter Demo',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: screenWidth * 0.1,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'This is a chatbot app\nClick the button below to start chatting',
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
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => const Chat(),
                                          ),
                                        );
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
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    foregroundColor: Theme.of(context).colorScheme.onSecondary,
                    elevation: 10,
                    hoverColor: Colors.black87,
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
