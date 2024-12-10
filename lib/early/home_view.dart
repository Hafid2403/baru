import 'package:flutter/material.dart';
import 'second_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            children: [
              Image.asset(
                'images/on_board_bg.png',
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 120,
                left: 10,
                child: (Image.asset(
                  'images/on_board_1.png',
                  fit: BoxFit.cover,
                  width: 380,
                  height: 400,
                )),
              ),
              Transform.translate(
                offset: Offset(80, 550),
                child: Text(
                  "Let's Create Your Health",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Transform.translate(
                offset: Offset(100, 700),
                child: ElevatedButton(
                  child: Text(
                    'To the Next Page',
                    style: TextStyle(
                      color: Colors.deepOrange,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    textStyle: const TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular((25))),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SecondPage();
                    }));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
