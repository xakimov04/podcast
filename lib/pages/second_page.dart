import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:podcast/pages/thirdly_page.dart';

import '../widgets/playlist_wiev.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
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
          "Popular Show",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.ellipsis_vertical,
                size: 25,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Container(
              height: 290,
              width: 290,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(50),
                image: const DecorationImage(
                  image: AssetImage(
                    "assets/images/topImage.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  // color: Colors.black,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Center(
                      child: Container(
                        alignment: Alignment.center,
                        width: 33,
                        height: 33,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: InkWell(
                          onTap: () {
                            print("object");
                          },
                          child: Icon(
                            Icons.play_arrow_rounded,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  height: 45,
                  decoration: BoxDecoration(
                    color: const Color(0xff8773ff),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Play All Show",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  height: 45,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 237, 237, 240),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ThirdlyPage(),
                        ),
                      );
                    },
                    child: const Text(
                      "Subscribe",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "12 Popular Show",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    PlaylistWiev(name: "Enjoy"),
                    PlaylistWiev(name: "Closed Mondasy"),
                    PlaylistWiev(name: "What is UX/UI Design?"),
                    PlaylistWiev(name: "User Experiance Design"),
                    PlaylistWiev(name: "Introduction"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.home),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.category_outlined),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.playlist_add_check_sharp),
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.person),
            ),
            label: 'Profile',
          ),
        ],
        selectedItemColor: const Color(0xff8773ff),
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
