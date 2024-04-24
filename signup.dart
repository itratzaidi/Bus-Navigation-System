import 'package:flutter/material.dart';
import 'login.dart'; // Import the LoginPage

class SignUpPage extends StatelessWidget {
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
            backgroundColor: Colors.transparent,
            elevation: 0,
            automaticallyImplyLeading: false,
            leading: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: SizedBox(
                width: 40.0,
                height: 40.0,
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Color.fromARGB(255, 255, 253, 253),
                  iconSize: 30.0,
                  onPressed: () {
                    Navigator.pop(context);
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Sign Up',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              SignUpFormField(
                label: 'Name',
                hintText: 'Please enter your name',
              ),
              SizedBox(height: 20.0),
              SignUpFormField(
                label: 'Email',
                hintText: 'Please enter your email',
              ),
              SizedBox(height: 20.0),
              SignUpFormField(
                label: 'Password',
                hintText: 'Please enter your password',
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 5.0),
                child: Text(
                  'Must be at least 8 characters',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              SizedBox(
                height: 40.0, // Set height of the button
                child: OutlinedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                        color: Colors.black), // Set border color to black
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(20.0), // Set border radius
                    ),
                  ),
                  child: Text(
                    'CREATE AN ACCOUNT',
                    style: TextStyle(
                      fontWeight: FontWeight.bold, // Make text bold
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Handle "Log In" button press
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              loginPage(), // Navigate to LoginPage
                        ),
                      );
                    },
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                  height: MediaQuery.of(context)
                      .viewInsets
                      .bottom), // Adjust spacing for keyboard
            ],
          ),
        ),
      ),
    );
  }
}

class SignUpFormField extends StatelessWidget {
  final String label;
  final String hintText;

  const SignUpFormField({
    Key? key,
    required this.label,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          label, // Name heading
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[200], // Set the background color
            borderRadius: BorderRadius.circular(20.0), // Set border radius
          ),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(15.0),
              hintText: hintText, // Show hint text when input is not focused
              border: InputBorder.none, // Remove the default border
            ),
          ),
        ),
      ],
    );
  }
}