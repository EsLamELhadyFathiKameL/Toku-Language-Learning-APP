import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyPhrasesContainer extends StatelessWidget {
  const MyPhrasesContainer({
    super.key,
    required this.jpPhrase,
    required this.enPhrase,
    required this.sound,
  });
  final String jpPhrase;
  final String enPhrase;
  final String sound;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: double.infinity,
      color: const Color(0XFF46A5CA),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  jpPhrase,
                  style: const TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
                Text(
                  enPhrase,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontFamily: "Pacifico",
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              final assetsAudioPlayer = AssetsAudioPlayer();
              assetsAudioPlayer.open(
                Audio(sound),
              );
            },
            icon: Icon(
              MdiIcons.play,
              color: Colors.white,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
