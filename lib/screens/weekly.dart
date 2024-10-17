import 'package:flutter/material.dart';

class WeeklyScreen extends StatefulWidget {
  const WeeklyScreen({super.key});

  @override
  State<WeeklyScreen> createState() => _WeeklyScreenState();
}

class _WeeklyScreenState extends State<WeeklyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weekly Challenge'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          // Center the container to avoid full width
          child: Container(
            width: 350, // You can adjust this width
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: const Color(0xFFC9ECFF), // Background color
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black12, width: 2), // Border
            ),
            child: ListView(
              shrinkWrap: true, // So the list only takes needed space
              children: [
                _buildChallengeCard("1. Challenge A",
                    "Harvest 10 tons palm fruit", 0, 10, 2000),
                _buildChallengeCard(
                    "2. Challenge B", "Harvest 10 tons palm oil", 0, 10, 1000),
                _buildChallengeCard(
                    "3. Challenge C", "Harvest 2 tons palm oil", 0, 2, 200),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildChallengeCard(
    String title, String description, int progress, int total, int points) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 16.0),
    child: Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.lightBlue[50], // Card background color
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black26),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 4),
          Text(description),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "+ $points points",
                style: const TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Text(
                    "$progress/$total",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.grey[300], // Greyish background
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      "incompleted",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    ),
  );
}
