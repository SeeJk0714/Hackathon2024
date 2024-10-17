import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hackathon/nav/navigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text("Ah Kao"), Text("Point: 2200")],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  context.pushNamed(Screen.weekly.name);
                },
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: const Color(0xFFC9ECFF), // Background color
                    borderRadius: BorderRadius.circular(20), // Rounded corners
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), // Shadow color
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: const Offset(2, 2), // Offset of shadow
                      ),
                    ],
                    border: Border.all(
                      // Adding the border
                      color: Colors.black, // Border color
                      width: 1.5, // Border width
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Weekly Challenge 0/3',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // Text color
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Current Tasks",
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20), // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2), // Shadow color
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(2, 2), // Offset of shadow
                    ),
                  ],
                  border: Border.all(
                    // Adding the border
                    color: Colors.black, // Border color
                    width: 1.5, // Border width
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          const Text(
                            "Portioning",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Card(
                            color: Colors.grey[300], // Grey background
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  12), // Rounded corners (optional)
                            ),
                            child: const SizedBox(
                              width: 60, // Define the width of the square
                              height: 60, // Define the height of the square
                              child: Center(
                                child: Icon(
                                  Icons.add, // Add icon
                                  size: 20, // Icon size
                                  color: Colors.black, // Icon color
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 160),
                      Column(
                        children: [
                          const Text("+ 100 points"),
                          const Text("+ RM 100"),
                          const SizedBox(height: 10),
                          FilledButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.blue,
                              ), // Blue background color
                            ),
                            child: const Text(
                              'Done',
                              style: TextStyle(
                                color: Colors.white, // Text color
                                fontWeight:
                                    FontWeight.bold, // Optional: bold text
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Completed Tasks",
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 80,
                decoration: BoxDecoration(
                  color: const Color(0xFFC9ECFF), // Background color
                  borderRadius: BorderRadius.circular(20), // Rounded corners
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Harvesting - 500kg",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Column(
                        children: [
                          SizedBox(height: 5),
                          Text("+ 100 points"),
                          Text("+ RM 100"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 80,
                decoration: BoxDecoration(
                  color: const Color(0xFFC9ECFF), // Background color
                  borderRadius: BorderRadius.circular(20), // Rounded corners
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Harvesting - 500kg",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Column(
                        children: [
                          SizedBox(height: 5),
                          Text("+ 100 points"),
                          Text("+ RM 100"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 80,
                decoration: BoxDecoration(
                  color: const Color(0xFFC9ECFF), // Background color
                  borderRadius: BorderRadius.circular(20), // Rounded corners
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Harvesting - 500kg",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Column(
                        children: [
                          SizedBox(height: 5),
                          Text("+ 100 points"),
                          Text("+ RM 100"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pushNamed(Screen.rank.name);
        },
        backgroundColor: Colors.blue, // Floating button background color
        child: const Icon(
          Icons.list,
          color: Colors.white,
        ), // Floating button icon
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .endFloat, // Positioning the button at the bottom-right
    );
  }
}
