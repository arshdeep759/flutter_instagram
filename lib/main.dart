import 'package:flutter/material.dart';
import 'package:flutter_instagram/singlepostscreen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Center(child: Text("INSTAGRAM")),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.lock),
                  Text(
                    "not.arshhhh ",
                    style: TextStyle(
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 1
                          ..color = Color.fromARGB(255, 255, 255, 255)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(235, 0, 0, 0),
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
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 45,
                        backgroundImage: NetworkImage(
                            "https://3.bp.blogspot.com/-V_3cFyWMM7E/U1hNg5_nSoI/AAAAAAAAAx4/HCMlouhf4IA/s1600/Arsh.jpg"),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text("18"),
                                Text("Post "),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                children: [
                                  Text("1 M"),
                                  Text("Followers"),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Text("1"),
                                Text("Following"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
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
                                ..color =
                                    const Color.fromARGB(255, 255, 250, 250)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 15, 0, 0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://tse4.mm.bing.net/th?id=OIP.3H0olJReQ9-UhSjXSajstgHaFj&pid=Api&P=0&h=180"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://tse4.mm.bing.net/th?id=OIP.3H0olJReQ9-UhSjXSajstgHaFj&pid=Api&P=0&h=180"),
                      ),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://tse4.mm.bing.net/th?id=OIP.3H0olJReQ9-UhSjXSajstgHaFj&pid=Api&P=0&h=180"),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  0,
                  10,
                  0,
                  0,
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        child: Text("Edit profile"),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text("Share profile"),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.apps),
                    Icon(Icons.video_collection),
                    Icon(Icons.turned_in_outlined),
                  ],
                ),
              ),
              GridView.builder(
                  shrinkWrap: true,
                  itemCount: 18,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Singlepostscreen()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(3),
                        color: const Color.fromARGB(255, 255, 255, 255),
                        alignment: Alignment.center,
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
