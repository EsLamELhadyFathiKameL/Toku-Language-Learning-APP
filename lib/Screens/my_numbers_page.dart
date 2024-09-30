import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_toku_language_learning_app/Containers/my_numbers_page_container.dart';

class MyNumbersPage extends StatelessWidget {
  const MyNumbersPage({super.key});
  final List<MyNumbersContainer> myNumbersList = const [
    MyNumbersContainer(
      numberImage: "Assets/Images/Numbers/number_one.png",
      jpName: "Ichi",
      enName: "One",
      sound: "Assets/Sounds/Numbers/number_one.mp3",
    ),
    MyNumbersContainer(
      numberImage: "Assets/Images/Numbers/number_two.png",
      jpName: "Ni",
      enName: "Two",
      sound: "Assets/Sounds/Numbers/number_two.mp3",
    ),
    MyNumbersContainer(
      numberImage: "Assets/Images/Numbers/number_three.png",
      jpName: "San",
      enName: "Three",
      sound: "Assets/Sounds/Numbers/number_three.mp3",
    ),
    MyNumbersContainer(
      numberImage: "Assets/Images/Numbers/number_four.png",
      jpName: "Shi",
      enName: "Four",
      sound: "Assets/Sounds/Numbers/number_four.mp3",
    ),
    MyNumbersContainer(
      numberImage: "Assets/Images/Numbers/number_five.png",
      jpName: "Go",
      enName: "Five",
      sound: "Assets/Sounds/Numbers/number_five.mp3",
    ),
    MyNumbersContainer(
      numberImage: "Assets/Images/Numbers/number_six.png",
      jpName: "Roku",
      enName: "Six",
      sound: "Assets/Sounds/Numbers/number_six.mp3",
    ),
    MyNumbersContainer(
      numberImage: "Assets/Images/Numbers/number_seven.png",
      jpName: "Sebun",
      enName: "Seven",
      sound: "Assets/Sounds/Numbers/number_seven.mp3",
    ),
    MyNumbersContainer(
      numberImage: "Assets/Images/Numbers/number_eight.png",
      jpName: "Hachi",
      enName: "Eight",
      sound: "Assets/Sounds/Numbers/number_eight.mp3",
    ),
    MyNumbersContainer(
      numberImage: "Assets/Images/Numbers/number_nine.png",
      jpName: "kyuu",
      enName: "Nine",
      sound: "Assets/Sounds/Numbers/number_nine.mp3",
    ),
    MyNumbersContainer(
      numberImage: "Assets/Images/Numbers/number_ten.png",
      jpName: "Juu",
      enName: "Ten",
      sound: "Assets/Sounds/Numbers/number_ten.mp3",
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
          "Numbers",
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontFamily: "Pacifico",
          ),
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: myNumbersList.length,
        itemBuilder: (context, index) {
          return myNumbersList[index];
        },
      ),
    );
  }
}
