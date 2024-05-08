
import 'package:flutter/material.dart';

class PlaylistWiev extends StatelessWidget {
  final String name;

  const PlaylistWiev({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage(
                        "assets/images/topImage.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Text(
                      "Socially Buzzed",
                      style: TextStyle(
                          fontWeight: FontWeight.w300, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.play_arrow_outlined,
                size: 25,
              ),
              style: IconButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 237, 237, 240),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
