import 'package:Online_Book_Shop/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'main.dart';

class loginScreen extends StatefulWidget {
  final String pas; // Declare pas as a parameter
  final String phoneOrEmail; // Declare phoneOrEmail as a parameter
  const loginScreen({Key? key, required this.pas, required this.phoneOrEmail}) : super(key: key); // Add phoneOrEmail to the constructor

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<loginScreen> {
  String email = '';
  String password = '';
  bool obscureText = true;

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Error"),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Close the dialog
            },
            child: Text("OK"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false, // Disable back button
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.lightBlueAccent, Colors.lightBlueAccent],
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top: 60.0, left: 22),
                child: Text(
                  'Hello\nSign in!',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: Colors.white,
                ),
                height: double.infinity,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          onChanged: (value) {
                            email = value;
                          },
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.check,
                              color: Colors.grey,
                            ),
                            labelText: 'Gmail/Phone/Facebook',
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.lightBlueAccent,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                          onChanged: (value) {
                            password = value;
                          },
                          obscureText: obscureText,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  obscureText = !obscureText;
                                });
                              },
                              icon: Icon(
                                obscureText ? Icons.visibility_off : Icons.visibility,
                                color: Colors.grey,
                              ),
                            ),
                            labelText: 'Password',
                            labelStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.lightBlueAccent,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ForgotPasswordScreen()),
                              );
                            },
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.lightBlueAccent,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 70),
                        GestureDetector(
                          onTap: () {
                            if (email.isEmpty || password.isEmpty) {
                              _showErrorDialog("Please fill in all fields.");
                            } else if ((email == 'bilal&waseem@gmail.com' ||
                                email == '03029232351' ||
                                email == '03074892233' ||
                                email == 'bilal&waseem' ||
                                email == widget.phoneOrEmail) && // Access phoneOrEmail using widget.phoneOrEmail
                                (password == '12345' || password == widget.pas)) {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyApp(),
                                ),
                              );
                            } else {
                              _showErrorDialog("Invalid email or password.");
                            }
                          },
                          child: Container(
                            height: 55,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: const LinearGradient(
                                colors: [
                                  Colors.lightBlueAccent,
                                  Colors.lightBlueAccent,
                                ],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'SIGN IN',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 150),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Don't have an account?",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) => RegScreen()),
                                  );
                                },
                                child: Text(
                                  "Sign up",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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



class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  final TextEditingController petNameController = TextEditingController();
  final TextEditingController friendNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text(
        'Forgot Password',
        style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.lightBlueAccent,
    ),
    ),
    ),
    body: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    TextField(
    controller: petNameController,
    decoration: InputDecoration(
    labelText: 'Please enter the pet name',
    labelStyle: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.lightBlueAccent,
    ),
    ),
    ),
    TextField(
    controller: friendNameController,
    decoration: InputDecoration(
    labelText: 'Please enter your friend name',
    labelStyle: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.lightBlueAccent,
    ),
    ),
    ),
    SizedBox(height: 30),
    ElevatedButton(
    onPressed: () {
    if (petNameController.text == 'dog' && friendNameController.text == 'bilal') {
    showDialog(
    context: context,
    builder: (context) {
    return AlertDialog(
    title: Text('Accounts Information'),
    content: Text('Email: bilal&waseem@gmail.com\nEmail == bilal&waseem\nEmail == 03074892233\nEmail == 03029232351\n\nPassword: 12345'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('OK'),
        ),
      ],
    );
    },
    );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Incorrect pet name and friend name')),
      );
    }
    },
      child: Container(
        height: 55,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
            colors: [
              Colors.lightBlueAccent,
              Colors.lightBlueAccent,
            ],
          ),
        ),
        child: Center(
          child: Text(
            'Submit',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
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

class RegScreen extends StatefulWidget {
  const RegScreen({Key? key}) : super(key: key);

  @override
  _RegScreenState createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {
  bool obscureText = true;
  String password = '';
  String confirmPassword = '';
  String pas = ''; // Declare pas here
  String phoneOrEmail = ''; // Variable to store phone or email

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false, // Disable back button
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.lightBlueAccent,
                  Colors.lightBlueAccent,
                ]),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top: 60.0, left: 22),
                child: Text(
                  'Create Your\nAccount',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                  color: Colors.white,
                ),
                height: double.infinity,
                width: double.infinity,
                child: SingleChildScrollView( // Wrap with SingleChildScrollView
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18, bottom: 18), // Add bottom padding
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.check, color: Colors.grey,),
                              label: Text('Full Name', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlueAccent,
                              ),)
                          ),
                        ),
                        TextField(
                          onChanged: (value) {
                            setState(() {
                              phoneOrEmail = value;
                            });
                          },
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.check, color: Colors.grey,),
                            labelText: 'Phone or Gmail',
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.lightBlueAccent,
                            ),
                          ),
                        ),
                        TextField(
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                          onChanged: (value) {
                            password = value;
                          },
                          obscureText: obscureText,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  obscureText = !obscureText;
                                });
                              },
                              icon: Icon(
                                obscureText ? Icons.visibility_off : Icons.visibility,
                                color: Colors.grey,
                              ),
                            ),
                            labelText: 'Password',
                            labelStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.lightBlueAccent,
                            ),
                          ),
                        ),
                        TextField(
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                          onChanged: (value) {
                            confirmPassword = value;
                          },
                          obscureText: obscureText,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  obscureText = !obscureText;
                                });
                              },
                              icon: Icon(
                                obscureText ? Icons.visibility_off : Icons.visibility,
                                color: Colors.grey,
                              ),
                            ),
                            labelText: 'Confirm Password',
                            labelStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.lightBlueAccent,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        const SizedBox(height: 70,),
                        GestureDetector(
                          onTap: () {
                            if (password == confirmPassword) {
                              pas = password; // Store password in 'pas' variable
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => loginScreen(
                                      pas: pas,
                                      phoneOrEmail: phoneOrEmail
                                  ),
                                ), // Pass 'pas' and 'phoneOrEmail' to loginScreen
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Passwords do not match'),
                                ),
                              );
                            }
                          },
                          child: Container(
                            height: 55,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: const LinearGradient(
                                  colors: [
                                    Colors.lightBlueAccent,
                                    Colors.lightBlueAccent,
                                  ]
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'SIGN IN',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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
