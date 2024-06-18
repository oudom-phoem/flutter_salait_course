import 'package:flutter/material.dart';
import 'dart:math';
import 'package:sala_it/homework6/components/datas.dart';

class ShortVideo extends StatelessWidget {
  ShortVideo({super.key});

  int randomInt = Random().nextInt(10);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.44,
            child: ShaderMask(
              shaderCallback: (rect) {
                return const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Colors.transparent],
                ).createShader(
                  Rect.fromLTRB(50, 50, rect.width, rect.height),
                );
              },
              blendMode: BlendMode.dstIn,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                    lstStory[randomInt = Random().nextInt(10)][0],
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: CircleAvatar(
              radius: 8,
              backgroundImage:
                  AssetImage(lstProfile[randomInt = Random().nextInt(10)]),
            ),
          ),
          Positioned(
            top: 10,
            left: 17,
            child: CircleAvatar(
              radius: 8,
              backgroundImage:
                  AssetImage(lstProfile[randomInt = Random().nextInt(10)]),
            ),
          ),
          Positioned(
            top: 10,
            left: 24,
            child: CircleAvatar(
              radius: 8,
              backgroundImage:
                  AssetImage(lstProfile[randomInt = Random().nextInt(10)]),
            ),
          ),
          const Positioned(
            top: 10,
            left: 50,
            child: Text(
              '34.5k likes',
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
              ),
            ),
          ),
          const Positioned(
            top: 7,
            right: 10,
            child: Icon(
              Icons.more_horiz,
              color: Colors.white,
            ),
          ),
          const Positioned(
            bottom: 30,
            left: 10,
            child: Text(
              'Scotland of India',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              '#lifeexperience # outings #travel',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
