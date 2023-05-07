import 'package:flutter_tts/flutter_tts.dart';

class TextToSpeech {
  static FlutterTts tts = FlutterTts();

  static initTTS() async {
    tts.setLanguage("en-US");
    tts.setSpeechRate(0.5);
  }

  static WelcomeMessage() async {
    tts.speak("Welcome to Texaudio");
  }

  static speak(String text) async {
    await tts.awaitSpeakCompletion(true);
    tts.speak(text);
  }
}
