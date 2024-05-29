import 'dart:async';
import 'dart:convert';

// import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Chat extends StatefulWidget {
  final String? character;
  const Chat({super.key, this.character});
  @override
  State<Chat> createState() => _ChatState();
}

Future<List> getResponse(String query) async {
  final response = await http.post(
    Uri.parse("https://8000-01hx9jfkpet0fwthkepmvrvv3c.cloudspaces.litng.ai/predict?query='$query'"),
    headers: <String, String>{
      'Authorization': 'Basic ',
    },
  );
  if (response.statusCode == 200) {
    List data = jsonDecode(response.body);
    return data;
  } else {
    throw Exception('Failed to load data');
  }
}

class _ChatState extends State<Chat> {
  late final List _response = [];
  final TextEditingController _controller = TextEditingController();

  Future<void> submitValue(String value) async {
    print('submit: $value');
    _controller.clear();
    // getResponse(value).then(
    //   (response) {
    //     print(response);
    //     setState(
    //       () {
    //         _response.add(response[0]);
    //       },
    //     );
    //   },
    // );
  }

  @override
  void initState() {
    super.initState();
    if (widget.character != null) {
      _response.add('Hello, I am ${widget.character}. How can I help you?');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 50,
        leading: IconButton(
          onPressed: () {
            print('Back to home');
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Theme.of(context).colorScheme.primary,),
        ),
        title: const Text('Chatting with Napoleon Bonaparte'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _response.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_response[index]),
                  leading: const Icon(Icons.person),
                );
              },
            ),
          ),
          TextField(
            controller: _controller,
            onSubmitted: submitValue,
            decoration: InputDecoration(
              hintText: 'Enter your message here',
              suffixIcon: IconButton(
                onPressed: () => submitValue(_controller.text),
                icon: const Icon(Icons.send),
              ),
              contentPadding: const EdgeInsets.all(20),
            ),
          ),
        ],
      ),
    );
  }
}
