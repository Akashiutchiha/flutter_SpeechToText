import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';

import 'colors.dart';

class SpeechScreen extends StatefulWidget {
  const SpeechScreen({super.key});

  @override
  State<SpeechScreen> createState() => _SpeechScreenState();
}

class _SpeechScreenState extends State<SpeechScreen> {
  SpeechToText speechToText = SpeechToText();
  String text = "Press the button to start speaking";
  var islistening = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: FloatingActionButton(
          backgroundColor: bgColor,
          onPressed: () {},
          child: GestureDetector(
            onTapDown: (details) async {
              if (!islistening) {
                var available = await speechToText.initialize();
                if (available) {
                  setState(() {
                    islistening = true;
                    speechToText.listen(
                      onResult: (result) {
                        setState(() {
                          text = result.recognizedWords;
                        });
                      },
                    );
                  });
                }
              }
            },
            onTapUp: (details) async {
              setState(() {
                islistening = false;
              });
              await speechToText.stop();
            },
            child: AvatarGlow(
              glowColor: bgColor,
              endRadius: 75.0,
              animate: islistening,
              child: CircleAvatar(
                radius: 35,
                backgroundColor: bgColor,
                child: Icon(
                  islistening ? Icons.mic : Icons.mic_none,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: bgColor,
        title: const Text(
          "Speech to Text",
          style: TextStyle(fontWeight: FontWeight.w700, color: textColor),
        ),
        centerTitle: true,
        leading: Icon(Icons.sort),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                height: 300,
              ),
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 20,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text('Developed by GoldenBrains IT'),
          ],
        ),
      ),
    );
  }
}
