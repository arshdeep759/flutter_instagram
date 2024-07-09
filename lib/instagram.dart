import 'package:flutter/material.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text("INSTAGRAM")),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.lock),
              Text(
                "not.arshhhh ",
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(1380, 0, 0, 0),
                child: Icon(Icons.add_box),
              ),
              Icon(Icons.menu),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(
              0,
              20,
              0,
              0,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdYVJE9OSr6mfuDYeKxwmM0DPWbdCveuItUA&s"),
                  ),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Text("0"),
                        Text("Post"),
                      ],
                    ),
                    Column(
                      children: [
                        Text("100 M"),
                        Text("Followers"),
                      ],
                    ),
                    Column(
                      children: [
                        Text("0"),
                        Text("Following"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      'ARSH DEEP',
                      style: TextStyle(
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 1
                            ..color = Colors.black),
                    ),
                    Text("WELCOME TO MY PROFILE :)))"),
                  ],
                ),
              ],
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Edit profile"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Share profile"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
