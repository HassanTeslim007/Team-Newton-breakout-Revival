import 'package:flutter/material.dart';

class LeaderboardScreen extends StatefulWidget {
  const LeaderboardScreen({super.key});

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/leaderboard-bg.png',
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                // Container(
                //   height: 40,
                //   color: Colors.redAccent,
                //   child: const Center(
                //     child: Text('Content goes here..'),
                //   ),
                // ),
                const SizedBox(
                  height: 40,
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(206, 255, 255, 255),
                                borderRadius: BorderRadius.circular(10)),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Phosah',
                                  style: TextStyle(
                                    fontFamily: 'Minecraft',
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Row(
                                    children: [
                                      Text(
                                        '818',
                                        style: TextStyle(
                                          fontFamily: 'Minecraft',
                                          fontSize: 16,
                                        ),
                                      ),
                                      Icon(
                                        Icons.star_outlined,
                                        color: Colors.amber,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}