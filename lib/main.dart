import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(
    name: "Wasee",
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 20, 20, 20),
          actions: [
            IconButton(
              icon: const Icon(Icons.add_circle_outline,
                  size: 30, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search, size: 30, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.maps_ugc, size: 30, color: Colors.white),
              onPressed: () {},
            ),
          ],
          title: const Text(
            "facebook",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 20, 20, 20),
        body: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.home, color: Color.fromARGB(255, 150, 150, 150)),
                Icon(Icons.smart_display,
                    color: Color.fromARGB(255, 150, 150, 150)),
                Icon(Icons.groups, color: Color.fromARGB(255, 150, 150, 150)),
                Icon(Icons.notifications,
                    color: Color.fromARGB(255, 150, 150, 150)),
                Icon(Icons.menu, color: Color.fromARGB(255, 150, 150, 150)),
              ],
            ),


            SizedBox(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: const Image(
                        image: AssetImage('assets/IMG_0974-01.jpeg'),
                        height: 50,
                        width: 50),
                  ),
                  SizedBox(
                    width: 260,
                    height: 45,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 20, 20, 20),
                          side: const BorderSide(
                              width: 1,
                              color: Color.fromARGB(255, 150, 150, 150))),
                      child: const Text(
                        "What's on your mind?                                                                    ",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                const Icon(Icons.photo_library, size: 25, color: Colors.green,),
                ],
              ),
            ),


            const SizedBox(
              height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
                       Text("Stories",
                         style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 150, 150, 150)),
                       ),
                       Text("Reels",
                         style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 150, 150, 150)),
                       ),
                       Text("Photo",
                         style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 150, 150, 150)),
                       ),
          ]),
            ),


           
          ],
        ),
      ),
    );
  }
}
