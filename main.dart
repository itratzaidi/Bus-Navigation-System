import 'package:flutter/material.dart';
import 'page2.dart'; // Import Page2 class from page2.dart file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IQRA Bus App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white, // Start color: white
              Color(0xFF0139A7), // End color: #0139A7
            ],
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 100), // Add space above the image
            Transform.translate(
              offset: Offset(0, -50), // Adjust the position of the image
              child: Image.asset(
                'assets/images/logo.png',
                height: 250, // Resize the image height
                width: 250, // Resize the image width
              ),
            ),
            SizedBox(height: 20), // Add space between the images
            Image.asset(
              'assets/images/bus1.png', // New image path
              height: 120, // Resize the image height
              width: 400, // Resize the image width
            ),
            Spacer(), // Fill remaining space above text
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 100), // Adjust the top padding to move text down
                child: Text(
                  'IU NAVBUS ',
                  style: TextStyle(
                    fontSize: 40, // Increase text size
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Set text color to white
                    shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(), // Fill remaining space
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                    EdgeInsets.only(bottom: 50), // Adjust the bottom padding
                child: Container(
                  width: 300, // Specify button width
                  decoration: BoxDecoration(
                    color: Colors.white, // Set button color to white
                    borderRadius:
                        BorderRadius.circular(60.0), // Make button circular
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page2()),
                      );
                    },
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        return Colors
                            .black; // Set text color in button to black
                      }),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      ), // Increase button size
                    ),
                    child: Text(
                      'GET STARTED',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}