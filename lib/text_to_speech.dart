import 'package:flutter/material.dart';
import 'package:flutter_application_1/tts.dart';

class TTSScreen extends StatelessWidget {
  const TTSScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var textController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text to Speech"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           TextField(
            controller:textController,
          ),
          ElevatedButton(
            onPressed: () {
              TextToSpeech.speak(textController.text);
            },
            child: const Text("Speak"),
          )
        ],
      ),
    );
  }
}
