import 'package:flutter_tts/flutter_tts.dart';

class TextToSpeech {
  static FlutterTts tts = FlutterTts();

  static initTTS() async{
    print(await tts.getLanguages);
    tts.setLanguage("en-EN");
  //  tts.setLanguage("fr-FR");
    tts.setPitch(1.0);
  }

  static speak(String text) async {

    tts.setStartHandler(() {
      print("Playing");
    });

    tts.setCompletionHandler(() {
      print("Complete");
    });

    tts.setErrorHandler((msg) {
      print("error: $msg");
    });
    
    await tts.awaitSpeakCompletion(true);

    tts.speak(text);
  }

}
