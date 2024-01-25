import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({
    super.key, required this.userName, required this.userImagePath, required this.storyImagePath,
  });
  final String userName;
  final String userImagePath;
  final String storyImagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: [
        //Story image
        ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Color.fromARGB(241, 0, 0, 0), Colors.transparent],
                ).createShader(bounds);
              },
              blendMode: BlendMode.dstATop,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  image: AssetImage(storyImagePath),
                  fit: BoxFit.cover,
                  height: 300,
                  width: MediaQuery.of(context).size.width * 0.4,
                ),
              ),
            )),

        //Profile picture
        Positioned(
          top: 10,
          left: 10,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 4, color: Colors.blue),
                image: DecorationImage(image: AssetImage(userImagePath))),
          ),
        ),

        //Profile Name
        Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              userName,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ))
      ]),
    );
  }
}
