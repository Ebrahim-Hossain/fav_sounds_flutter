import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget soundButton({
    required String text,
    required String sound,
    required String image,
  })
  {
    return Column(
      children: [
        Text(text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(height: 5),
        InkWell(
          onTap: () {
            final player = AudioPlayer();
            player.play(AssetSource('${sound}_sound.wav'));
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(
                15,
              ), // set any radius you like
            ),
            padding: EdgeInsets.all(12),
            child: Image(image: AssetImage("images/$image.png"), width: 130),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App Bar")),
      backgroundColor: Colors.white60,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    soundButton(text: "Wave", sound: "wave", image: "wave"),

                    soundButton(text: "Pistol", sound: "pistol", image: "pistol"),

                  ],
                ),
              ),

              SizedBox(height: 20,),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    soundButton(text: "Bird", sound: "bird", image: "bird"),

                    soundButton(text: "Drum", sound: "drum", image: "drum"),

                  ],
                ),
              ),

              SizedBox(height: 20,),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    soundButton(text: "Kiss", sound: "kiss", image: "kiss"),

                    soundButton(text: "Horn", sound: "horn", image: "horn"),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
