import 'package:flutter/material.dart';
import 'package:my_toku_language_learning_app/Containers/my_home_page_container.dart';
import 'package:my_toku_language_learning_app/Screens/my_colors_page.dart';
import 'package:my_toku_language_learning_app/Screens/my_family_members_page.dart';
import 'package:my_toku_language_learning_app/Screens/my_numbers_page.dart';
import 'package:my_toku_language_learning_app/Screens/my_phrases_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF483227),
        title: const Text(
          "Toku",
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontFamily: "Pacifico",
          ),
        ),
      ),
      body: Column(
        children: [
          MyHomePageContainer(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const MyNumbersPage();
                  },
                ),
              );
            },
            color: const Color(0XFFf99430),
            text: "Numbers",
          ),
          MyHomePageContainer(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const MyFamilyMembersPage();
                  },
                ),
              );
            },
            color: const Color(0XFF528031),
            text: "FamiLy Members",
          ),
          MyHomePageContainer(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const MyCoLorsPage();
                  },
                ),
              );
            },
            color: const Color(0XFF7C3FA1),
            text: "CoLors",
          ),
          MyHomePageContainer(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const MyPhrasesPage();
                  },
                ),
              );
            },
            color: const Color(0XFF46A5CA),
            text: "Phrases",
          ),
        ],
      ),
    );
  }
}
