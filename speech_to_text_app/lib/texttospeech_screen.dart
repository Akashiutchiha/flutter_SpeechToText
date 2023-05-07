import 'package:flutter/material.dart';
import 'package:speech_to_text_app/tts.dart';

import 'colors.dart';

class TextToSpeechScreen extends StatefulWidget {
  const TextToSpeechScreen({super.key});

  @override
  State<TextToSpeechScreen> createState() => _TextToSpeechScreenState();
}

class _TextToSpeechScreenState extends State<TextToSpeechScreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text To Speech"),
        backgroundColor: bgColor,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      controller: controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          // borderSide: BorderSide(color: bgColor, width: 2.0)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        hintText: "Enter Text",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                    onTap: () {
                      TextToSpeech.speak(controller.text);
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      child: Center(
                          child: Text(
                        "Speak",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, color: Colors.white),
                      )),
                      decoration: BoxDecoration(
                        color: bgColor,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(bottom: 0),
              child: Text(
                "Developed by GoldenBrains IT",
              )),
        ],
      ),
    );
  }
}
