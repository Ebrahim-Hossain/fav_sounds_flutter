import 'dart:developer';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
      ),
      backgroundColor: Colors.white60,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  ElevatedButton(onPressed: (){
                    log("clicked");
                  },
                    style: ButtonStyle(
                      padding: WidgetStateProperty.all(EdgeInsets.zero),
                    ),
                    child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15), // set any radius you like
                    ),
                    padding: EdgeInsets.all(12),
                    child: Image(
                      image: AssetImage("images/wave.png"),
                      width: 130,
                    ),
                  ),)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
