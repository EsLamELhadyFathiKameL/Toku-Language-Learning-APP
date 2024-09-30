import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_toku_language_learning_app/Containers/my_colors_page_container.dart';

class MyCoLorsPage extends StatelessWidget {
  const MyCoLorsPage({super.key});
  final List<MyCoLorsContainer> myCoLorsList = const [
    MyCoLorsContainer(
      coLorImage: "Assets/Images/CoLors/black.png",
      jpName: "Kuro",
      enName: "BLack",
      sound: "Assets/Sounds/CoLors/black.wav",
    ),
    MyCoLorsContainer(
      coLorImage: "Assets/Images/CoLors/brown.png",
      jpName: "Chairo",
      enName: "Brown",
      sound: "Assets/Sounds/CoLors/brown.wav",
    ),
    MyCoLorsContainer(
      coLorImage: "Assets/Images/CoLors/gray.png",
      jpName: "Gurē",
      enName: "Gray",
      sound: "Assets/Sounds/CoLors/gray.wav",
    ),
    MyCoLorsContainer(
      coLorImage: "Assets/Images/CoLors/green.png",
      jpName: "Midori",
      enName: "Green",
      sound: "Assets/Sounds/CoLors/green.wav",
    ),
    MyCoLorsContainer(
      coLorImage: "Assets/Images/CoLors/red.png",
      jpName: "Aka",
      enName: "Red",
      sound: "Assets/Sounds/CoLors/red.wav",
    ),
    MyCoLorsContainer(
      coLorImage: "Assets/Images/CoLors/white.png",
      jpName: "Shiro",
      enName: "White",
      sound: "Assets/Sounds/CoLors/white.wav",
    ),
    MyCoLorsContainer(
      coLorImage: "Assets/Images/CoLors/yellow.png",
      jpName: "kiiro",
      enName: "YeLLow",
      sound: "Assets/Sounds/CoLors/yellow.wav",
    ),
    MyCoLorsContainer(
      coLorImage: "Assets/Images/CoLors/dusty_yellow.png",
      jpName: "Hokori Ppoi Kiiro",
      enName: "Dusty YeLLow",
      sound: "Assets/Sounds/CoLors/dusty_yellow.wav",
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
          "CoLors",
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontFamily: "Pacifico",
          ),
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: myCoLorsList.length,
        itemBuilder: (context, index) {
          return myCoLorsList[index];
        },
      ),
    );
  }
}
