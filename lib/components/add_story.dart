
import 'package:flutter/material.dart';

class AddStory extends StatelessWidget {
  const AddStory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(
            image: AssetImage('assets/image1.jpg'),
            fit: BoxFit.cover,
            height: 300,
            width: MediaQuery.of(context).size.width * 0.4,
          ),
        ),
    
        //Text
        Positioned(
            bottom: 0,
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width * 0.4,
              child: Center(
                  child: Text(
                "Add a Story",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25, fontWeight: FontWeight.bold),
              )),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)),
            )),
        //Button
        Positioned(
          top: 170,
          // left: 53,//not responsive
          left: MediaQuery.of(context).size.width * 0.2 -
              30, // responsive
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(100),
                border:
                    Border.all(width: 4, color: Colors.white)),
            child: const Icon(Icons.add,
                color: Colors.white, size: 40),
          ),
        ),
      ]),
    );
  }
}
