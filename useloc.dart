import 'package:flutter/material.dart';
import 'you.dart'; // Import the next page

class uselocPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
            color: Color.fromARGB(255, 72, 80, 155),
          ),
          child: AppBar(
            backgroundColor: Colors.transparent, // Make app bar transparent
            elevation: 0, // Remove app bar elevation
            automaticallyImplyLeading: false, // Disable the default back button
            leading: Padding(
              padding: const EdgeInsets.only(left: 10.0), // Adjust left padding
              child: SizedBox(
                width: 40.0, // Set the width of the SizedBox
                height: 40.0, // Set the height of the SizedBox
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  color:
                      Colors.white, // Set the color of the back button to white
                  iconSize: 30.0, // Set the size of the back button icon
                  onPressed: () {
                    Navigator.pop(context); // Navigate back when pressed
                  },
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/bar.png'),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.white, // Set the background color to white
          ),
          Center(
            child: Container(
              width: 300,
              height: 350,
              decoration: BoxDecoration(
                color: Colors.blue, // Set the box color to blue
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white, // Set background color to white
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.location_on,
                        size: 40,
                        color: Colors.blue, // Set icon color to blue
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Enable Your Location',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Choose your location to find',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'bus around you',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Add functionality for the button here
                    },
                    child: Text(
                      'Use My Location',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.blue[900]!,
                      ),
                      elevation: MaterialStateProperty.all<double>(5),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20, // Adjust top position as needed
            right: 150, // Adjust left position as needed
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        YouArePage(), // Navigate to the next page
                  ),
                );
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 10,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: Center(
                  child: Icon(
                    Icons.arrow_forward,
                    size: 30, // Increase icon size
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}