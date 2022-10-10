import 'package:flutter/material.dart';

void main() {
  runApp(CardApp());
}

class CardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(24.0),
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.05, 0.175, 0.425, 0.7],
              colors: [
                Colors.deepPurple.shade300,
                Colors.deepPurple.shade200,
                Colors.deepPurple.shade50,
                Colors.white,
              ],
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 80.0,
                  backgroundImage: AssetImage('assets/me.jfif'),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Tiago C. Frausino',
                  style: TextStyle(
                    fontFamily: 'Indie Flower',
                    fontSize: 34,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 95.0, bottom: 24.0),
                  child: Text(
                    'FULLSTACK DEVELOPER',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 18,
                      color: Colors.deepPurple.shade200,
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(
                      size: 32,
                      Icons.email_rounded,
                      color: Colors.deepPurple.shade200,
                    ),
                    title: const Padding(
                      padding: EdgeInsets.only(right: 16.0),
                      child: Text("tiago.tcf2@gmail.com",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xbb413382),
                          )),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Card(
                  child: ListTile(
                    leading: Icon(
                      size: 32,
                      Icons.phone_android,
                      color: Colors.deepPurple.shade200,
                    ),
                    title: const Padding(
                      padding: EdgeInsets.only(right: 16.0),
                      child: Text("+55 (61) 98188-8924",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xbb413382),
                          )),
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
