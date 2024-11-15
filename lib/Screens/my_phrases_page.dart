import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_toku_language_learning_app/Containers/my_phrases_page_container.dart';

class MyPhrasesPage extends StatelessWidget {
  const MyPhrasesPage({super.key});
  final List<MyPhrasesContainer> myPhrasesList = const [
    MyPhrasesContainer(
      jpPhrase: "Kimasu ka?",
      enPhrase: "Are You Coming?",
      sound: "Assets/Sounds/Phrases/are_you_coming.wav",
    ),
    MyPhrasesContainer(
      jpPhrase: "Kōdoku Suru Koto o wasurenaide kudasai.",
      enPhrase: "Don't Forget To Subscribe.",
      sound: "Assets/Sounds/Phrases/dont_forget_to_subscribe.wav",
    ),
    MyPhrasesContainer(
      jpPhrase: "Go kibun wa ikagadesu ka?",
      enPhrase: "How Are You FeeLing?",
      sound: "Assets/Sounds/Phrases/how_are_you_feeling.wav",
    ),
    MyPhrasesContainer(
      jpPhrase: "Watashi wa anime ga daisukidesu.",
      enPhrase: "I Love Anime.",
      sound: "Assets/Sounds/Phrases/i_love_anime.wav",
    ),
    MyPhrasesContainer(
      jpPhrase: "Watashi wa puroguramingu ga daisukidesu.",
      enPhrase: "I Love Programming.",
      sound: "Assets/Sounds/Phrases/i_love_programming.wav",
    ),
    MyPhrasesContainer(
      jpPhrase: "Puroguramingu wa kantandesu.",
      enPhrase: "Programming Is Easy.",
      sound: "Assets/Sounds/Phrases/programming_is_easy.wav",
    ),
    MyPhrasesContainer(
      jpPhrase: "Anata no namae wa nanidesu ka?",
      enPhrase: "What's Your Name?",
      sound: "Assets/Sounds/Phrases/what_is_your_name.wav",
    ),
    MyPhrasesContainer(
      jpPhrase: "Doko ni iku no?",
      enPhrase: "Where Are You Going?",
      sound: "Assets/Sounds/Phrases/where_are_you_going.wav",
    ),
    MyPhrasesContainer(
      jpPhrase: "Hai, ixias yo.",
      enPhrase: "Yes I'm Coming.",
      sound: "Assets/Sounds/Phrases/yes_im_coming.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            MdiIcons.arrowLeft,
            color: Colors.white,
          ),
        ),
        automaticallyImplyLeading: true,
        backgroundColor: const Color(0XFF483227),
        title: const Text(
          "Phrases",
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontFamily: "Pacifico",
          ),
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: myPhrasesList.length,
        itemBuilder: (context, index) {
          return myPhrasesList[index];
        },
      ),
    );
  }
}
