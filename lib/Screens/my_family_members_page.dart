import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_toku_language_learning_app/Containers/my_family_members_page_container.dart';

class MyFamilyMembersPage extends StatelessWidget {
  const MyFamilyMembersPage({super.key});
  final List<MyFamiLyMembersContainer> myFamiLyMembersList = const [
    MyFamiLyMembersContainer(
      image: "Assets/Images/FamiLy_Members/father.png",
      jpName: "Chichioya",
      enName: "Father",
      sound: "Assets/Sounds/FamiLy_Members/father.wav",
    ),
    MyFamiLyMembersContainer(
      image: "Assets/Images/FamiLy_Members/daughter.png",
      jpName: "Musume",
      enName: "Daughter",
      sound: "Assets/Sounds/FamiLy_Members/daughter.wav",
    ),
    MyFamiLyMembersContainer(
      image: "Assets/Images/FamiLy_Members/grandfather.png",
      jpName: "Ojisan",
      enName: "Grand Father",
      sound: "Assets/Sounds/FamiLy_Members/grandfather.wav",
    ),
    MyFamiLyMembersContainer(
      image: "Assets/Images/FamiLy_Members/mother.png",
      jpName: "Hahaaoya",
      enName: "Mother",
      sound: "Assets/Sounds/FamiLy_Members/mother.wav",
    ),
    MyFamiLyMembersContainer(
      image: "Assets/Images/FamiLy_Members/grandmother.png",
      jpName: "Sobo",
      enName: "Grand Mother",
      sound: "Assets/Sounds/FamiLy_Members/grandmother.wav",
    ),
    MyFamiLyMembersContainer(
      image: "Assets/Images/FamiLy_Members/older_brother.png",
      jpName: "Nisan",
      enName: "OLder Brother",
      sound: "Assets/Sounds/FamiLy_Members/older_bother.wav",
    ),
    MyFamiLyMembersContainer(
      image: "Assets/Images/FamiLy_Members/older_sister.png",
      jpName: "Ane",
      enName: "OLder Sister",
      sound: "Assets/Sounds/FamiLy_Members/older_sister.wav",
    ),
    MyFamiLyMembersContainer(
      image: "Assets/Images/FamiLy_Members/son.png",
      jpName: "Musuko",
      enName: "Son",
      sound: "Assets/Sounds/FamiLy_Members/son.wav",
    ),
    MyFamiLyMembersContainer(
      image: "Assets/Images/FamiLy_Members/younger_brother.png",
      jpName: "Otouto",
      enName: "Younger Brohter",
      sound: "Assets/Sounds/FamiLy_Members/younger_brohter.wav",
    ),
    MyFamiLyMembersContainer(
      image: "Assets/Images/FamiLy_Members/younger_sister.png",
      jpName: "Imouto",
      enName: "Younger Sister",
      sound: "Assets/Sounds/FamiLy_Members/younger_sister.wav",
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
          "FamiLy Members",
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontFamily: "Pacifico",
          ),
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: myFamiLyMembersList.length,
        itemBuilder: (context, index) {
          return myFamiLyMembersList[index];
        },
      ),
    );
  }
}
