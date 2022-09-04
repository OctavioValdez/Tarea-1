import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomeP(),
    );
  }
  // ignore: non_constant_identifier_names
}

class HomeP extends StatefulWidget {
  const HomeP({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeP> createState() => _HomePageState();
}

class _HomePageState extends State<HomeP> {
  bool isAsel = false;
  bool isWsel = false;
  bool isP1sel = false;
  bool isP2sel = false;
}

@override
Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: const Text('Mc Flutter'),
      ),
      body: Container(
        decoration: const BoxDecoration(
            border: Border(
          top: BorderSide(color: Colors.black),
          left: BorderSide(color: Colors.black),
          bottom: BorderSide(color: Colors.black),
          right: BorderSide(color: Colors.black),
        )),
        margin: const EdgeInsets.all(12),
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Icon(
                Icons.account_circle,
                size: 45,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Flutter McFlutter",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 24)),
                  Text("Experienced app developer")
                ],
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("123 Main Street", style: TextStyle(fontSize: 12)),
                Text("(415) 555-0198", style: TextStyle(fontSize: 12))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.accessibility)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.timer)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.phone_android)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.phone_iphone))
              ],
            )
          ],
        ),
      ));
}
