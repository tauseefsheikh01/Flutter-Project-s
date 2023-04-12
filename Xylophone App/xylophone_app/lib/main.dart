import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/note$soundNumber.wav"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Container(
                    width: double.infinity,
                    height: 125.0,
                    color: Colors.red,
                    child: TextButton(
                      onPressed: () async {
                        playSound(1);
                      },
                      child: const Text('Note 1'),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: double.infinity,
                    height: 125.0,
                    color: Colors.orange,
                    child: TextButton(
                      onPressed: () async {
                        playSound(2);
                      },
                      child: const Text('Note 2'),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: double.infinity,
                    height: 125.0,
                    color: Colors.yellow,
                    child: TextButton(
                      onPressed: () async {
                        playSound(3);
                      },
                      child: const Text('Note 3'),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: double.infinity,
                    height: 125.0,
                    color: Colors.green,
                    child: TextButton(
                      onPressed: () async {
                        playSound(4);
                      },
                      child: const Text('Note 4'),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: double.infinity,
                    height: 125.0,
                    color: Colors.teal,
                    child: TextButton(
                      onPressed: () async {
                        playSound(5);
                      },
                      child: const Text('Note 5'),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: double.infinity,
                    height: 125.0,
                    color: Colors.blue,
                    child: TextButton(
                      onPressed: () async {
                        playSound(6);
                      },
                      child: const Text('Note 6'),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: double.infinity,
                    height: 125.0,
                    color: Colors.purple,
                    child: TextButton(
                      onPressed: () async {
                        playSound(7);
                      },
                      child: const Text('Note 7'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
