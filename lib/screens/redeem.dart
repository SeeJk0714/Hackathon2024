import 'package:flutter/material.dart';

class RedeemScreen extends StatefulWidget {
  const RedeemScreen({super.key});

  @override
  State<RedeemScreen> createState() => _RedeemScreenState();
}

class _RedeemScreenState extends State<RedeemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Redeem Store',
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                '2200 points', // Current points
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            RedeemItem(
              itemName: 'Motorcycle',
              pointsRequired: 20000,
            ),
            SizedBox(height: 20),
            RedeemItem(
              itemName: 'iPhone 16',
              pointsRequired: 15000,
            ),
            SizedBox(height: 20),
            RedeemItem(
              itemName: 'Television',
              pointsRequired: 13000,
            ),
          ],
        ),
      ),
    );
  }
}

class RedeemItem extends StatelessWidget {
  final String itemName;
  final int pointsRequired;

  const RedeemItem({
    Key? key,
    required this.itemName,
    required this.pointsRequired,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 150,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.blue, // Blue background for item card
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(2, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                itemName,
                style: const TextStyle(
                  fontSize: 22,
                  color: Colors.white, // White text for item name
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                '- $pointsRequired points',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.yellow, // Yellow text for points
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
