
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdlyPage extends StatelessWidget {
  const ThirdlyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        leadingWidth: 80,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
          ),
        ),
        title: const Text(
          "Subscribe",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.ellipsis_vertical),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              Text(
                "Subscribe Your Favourite Podcast Authores. Or You Can Skip It For Now",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade500),
              ),
              const SizedBox(
                height: 20,
              ),
              for (int i = 0; i < 5; i++)
                GetPodcast(
                  i: i,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class GetPodcast extends StatelessWidget {
  List title = [
    "The Smith Comedy",
    "The Boy Who Flew",
    "Community Best",
    "One Week Wonders",
    "The Boy Who Flew"
  ];
  List images = [
    "first.jpg",
    "second.jpg",
    "third.jpg",
    "fourth.jpg",
    "fifth.jpg"
  ];
  int i = 0;

  GetPodcast({required this.i, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            clipBehavior: Clip.hardEdge,
            child: Image.asset(
              "assets/images/${images[i]}",
              height: 85,
              width: 85,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title[i],
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 22),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Show",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 21),
                          ),
                          Text(
                            "685 Podcasts",
                            style: TextStyle(
                                color: Colors.grey.shade500, fontSize: 16),
                          ),
                        ],
                      ),
                      InkWell(
                        child: Ink(
                          padding: const EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                              color: i % 2 == 0
                                  ? const Color(0xff8773ff)
                                  : Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(10)),
                          height: 35,
                          width: 110,
                          child: Text(
                            textAlign: TextAlign.center,
                            "Subscribe",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: i % 2 == 0 ? Colors.white : Colors.black,
                                fontSize: 18),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
