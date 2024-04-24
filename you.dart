import 'package:flutter/material.dart';
import 'stu.dart'; // Import the stu.dart page
import 'driver.dart'; // Import the drive.dart page

class YouArePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(100.0), // Set the preferred height of the app bar
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(
                  30), // Set the bottom radius to make it circular
            ),
            color: Color.fromARGB(255, 72, 80, 155), // Set the color to #0014CA
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
                  color: const Color.fromARGB(255, 255, 255,
                      255), // Set the color of the back button to black
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0), // Increased top padding
              child: Text(
                'You Are',
                textAlign: TextAlign.center,
                // Center align the text
                style: TextStyle(
                  fontSize: 30, // Increased text size
                  fontWeight: FontWeight.bold, // Make text bold
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ), // Add spacing below heading
            ElevatedButton(
              onPressed: () {
                // Navigate to StuPage when STUDENT button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StuPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              child: Text('STUDENT'),
            ),
            SizedBox(
              height: 10.0,
            ), // Add spacing between buttons
            ElevatedButton(
              onPressed: () {
                // Navigate to DrivePage when DRIVER button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DrivePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              child: Text('DRIVER'),
            ),
            SizedBox(
              height: 20.0,
            ), // Add spacing before image
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 100.0,
                    // Set radius to control the size of the circular avatar
                    backgroundColor: Colors.grey[200],
                    // Set background color to grey
                    backgroundImage: AssetImage('assets/images/stu.png'),
                    // Image path
                  ),
                  SizedBox(
                    height: 20.0,
                  ), // Add spacing between images
                  CircleAvatar(
                    radius: 100.0,
                    // Set radius to control the size of the circular avatar
                    backgroundColor: Colors.grey[200],
                    // Set background color to grey
                    backgroundImage: AssetImage('assets/images/driver.png'),
                    // Image path
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}