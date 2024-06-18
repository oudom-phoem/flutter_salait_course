import 'package:flutter/material.dart';
import 'package:sala_it/homework6/components/datas.dart';
import 'package:sala_it/homework6/components/posting.dart';

class FeedsScreen extends StatelessWidget {
  const FeedsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Container(
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.5),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: lstPoster.length,
                itemBuilder: (context, index) {
                  return Posting(
                    imgUrl: lstPoster[index],
                    profileUrl: lstProfile[index],
                    name: fullNames[index],
                    postedName: postedTime[index],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
