import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hackathon/model/user.dart';
import 'package:hackathon/nav/navigation.dart';

class RankScreen extends StatefulWidget {
  const RankScreen({super.key});

  @override
  State<RankScreen> createState() => _RankScreenState();
}

class _RankScreenState extends State<RankScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text("Leaderboard"),
            const SizedBox(
              width: 170,
            ),
            GestureDetector(
                onTap: () {
                  context.pushNamed(Screen.redeem.name);
                },
                child: const Icon(Icons.card_giftcard))
          ],
        ),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 1.9,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: userItems.length,
                  itemBuilder: (context, index) {
                    final items = userItems[index];
                    return Padding(
                      padding: const EdgeInsets.only(
                          right: 20.0, left: 20.0, bottom: 15.0),
                      child: Row(
                        children: [
                          Text(
                            items.rank,
                            style: const TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 15.0,
                          ),
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(items.image),
                          ),
                          const SizedBox(
                            width: 15.0,
                          ),
                          Text(
                            items.name,
                            style: const TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.w500),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              const SizedBox(
                                width: 5.0,
                              ),
                              const Icon(
                                Icons.back_hand,
                                color: Colors.amber,
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                items.point.toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.0,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
          const Positioned(
            top: 10,
            left: 10,
            child: Text(
              "End in 2d 23Hours",
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
              top: 50,
              right: 160,
              child: rank(
                  radius: 45.0,
                  height: 25.0,
                  image: "images/a.jpg",
                  name: "Denish",
                  point: "4000")),
          Positioned(
              top: 150,
              left: 45,
              child: rank(
                  radius: 30.0,
                  height: 10.0,
                  image: "images/b.jpg",
                  name: "Muthu",
                  point: "3500")),
          Positioned(
              top: 150,
              right: 45,
              child: rank(
                  radius: 30.0,
                  height: 10.0,
                  image: "images/c.jpg",
                  name: "Abu",
                  point: "3300")),
        ],
      ),
    );
  }

  Column rank({
    required double radius,
    required double height,
    required String image,
    required String name,
    required String point,
  }) {
    return Column(
      children: [
        CircleAvatar(
          radius: radius,
          backgroundImage: AssetImage(image),
        ),
        SizedBox(
          height: height,
        ),
        Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
        ),
        SizedBox(
          height: height,
        ),
        Container(
          height: 25.0,
          width: 70.0,
          decoration: BoxDecoration(
              color: Colors.black54, borderRadius: BorderRadius.circular(50.0)),
          child: Row(
            children: [
              const SizedBox(
                width: 5.0,
              ),
              const Icon(
                Icons.back_hand,
                color: Colors.amber,
              ),
              const SizedBox(
                width: 5.0,
              ),
              Text(
                point,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10.0,
                    color: Colors.white),
              ),
            ],
          ),
        )
      ],
    );
  }
}
