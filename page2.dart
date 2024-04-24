import 'package:bus_track/feedback.dart';
import 'package:flutter/material.dart';
import 'main.dart'; // Import your main.dart file where MyApp is defined
import 'signup.dart'; // Import the SignUpPage
import 'login.dart'; // Import the LoginPage
import 'profile.dart'; // Import the ProfilePage

class Page2 extends StatelessWidget {
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
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                );
              },
            ),
            title: Text(''),
            backgroundColor: Colors.transparent, // Make app bar transparent
            elevation: 0, // Remove app bar elevation
            automaticallyImplyLeading: false, // Disable the default back button
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 20, // Adjust the radius to match the SignUpPage
                  backgroundImage: AssetImage(
                    'assets/images/bar.png',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 72, 80, 155),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: CircleAvatar(
                      radius:
                          40, // Decrease the radius to make the image smaller
                      backgroundImage: AssetImage('assets/images/user.png'),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'HAIDER',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Navigate to main.dart page
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          MyApp()), // Replace MyApp with your main.dart page
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.how_to_reg),
              title: Text('Sign Up'),
              onTap: () {
                // Navigate to sign up screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Enable Location'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.feedback),
              title: Text('Feedback'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FeedbackPage(),
                    )); // Enable location

                // Provide feedback
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfilePage(),
                    ));
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(50.0), // Adjust border radius
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'assets/images/bluebus1.png', // Path to your image
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 80), // Adjust the height to move the image up
                Text(
                  'YOUR CAMPUS  ',
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  'YOUR RIDE',
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  'ON TIME',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          Positioned(
            bottom: 25, // Adjust the bottom position of the buttons
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Action for Sign Up button
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(
                        color: Color.fromARGB(
                            255, 72, 80, 155), // Set outline color
                      ),
                    ),
                    shadowColor: Color.fromARGB(
                        255, 248, 251, 252), // Set button color to light blue
                    padding: EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25), // Button size
                    elevation: 5, // Button elevation
                  ),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 18), // Increased text size
                  ), // Text inside the button
                ),
                SizedBox(height: 10), // Add spacing between the buttons
                ElevatedButton(
                  onPressed: () {
                    // Action for I Have an Account button
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            loginPage(), // Navigate to LoginPage
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(
                        color: Color.fromARGB(
                            255, 72, 80, 155), // Set outline color
                      ),
                    ),
                    shadowColor: Colors.white, // Set button color to white
                    padding: EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25), // Button size
                    elevation: 5, // Button elevation
                  ),
                  child: Text(
                    'I Have an Account',
                    style: TextStyle(fontSize: 15), // Increased text size
                  ), // Text inside the button
                ),
              ],
            ),
          ),
          Positioned(
            top: 20, // Adjust the top position to place it below the app bar
            left: 8, // Adjust the left position as needed
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context); // Navigate back to the previous page
              },
              color: Colors.black,
              iconSize: 32, // Set the color of the back button icon to black
            ),
          ),
        ],
      ),
    );
  }
}