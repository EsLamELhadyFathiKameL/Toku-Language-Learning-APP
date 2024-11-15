import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyNumbersContainer extends StatelessWidget {
  const MyNumbersContainer({
    super.key,
    required this.numberImage,
    required this.jpName,
    required this.enName,
    required this.sound,
  });
  final String numberImage;
  final String jpName;
  final String enName;
  final String sound;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: double.infinity,
      color: const Color(0XFFf99430),
      child: Row(
        children: [
          Container(
            color: Colors.white,
            child: Image.asset(numberImage),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  jpName,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                Text(
                  enName,
                  style: const TextStyle(
                    fontSize: 14,
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
