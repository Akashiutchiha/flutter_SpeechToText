import 'package:flutter/material.dart';
import 'package:speech_to_text_app/colors.dart';
import 'package:speech_to_text_app/speech_screen.dart';
import 'package:speech_to_text_app/texttospeech_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: bgColor,
        title: Text("Texaudio"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SpeechScreen(),
                  ),
                );
              },
              child: Container(
                height: 50,
                width: 150,
                child: Center(
                    child: Text(
                  "Speech To Text",
                  style: TextStyle(
                      fontWeight: FontWeight.w800, color: Colors.white),
                )),
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TextToSpeechScreen(),
                  ),
                );
              },
              child: Container(
                height: 50,
                width: 150,
                child: Center(
                    child: Text(
                  "Text To Speech",
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
    );
  }
}
