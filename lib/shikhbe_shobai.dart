import 'package:flutter/material.dart';
import 'package:shikhbe_shobai/tutorial.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/img.png'                                  ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: FloatingActionButton(
            child: Icon(Icons.arrow_forward),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => TutorialScreen()));
            },),
      ),
    );
  }
}
