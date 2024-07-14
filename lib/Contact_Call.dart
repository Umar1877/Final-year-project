import 'package:Online_Book_Shop/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

import 'Home.dart';

class Call extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Phone Call',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PhoneCallScreen(),
    );
  }
}

class PhoneCallScreen extends StatefulWidget {
  @override
  _PhoneCallScreenState createState() => _PhoneCallScreenState();
}

class _PhoneCallScreenState extends State<PhoneCallScreen> {
  TextEditingController _numberController = TextEditingController(text: '+923048868988');

  void _callNumber() async {
    String number = _numberController.text;
    bool? res = await FlutterPhoneDirectCaller.callNumber(number);
    print(res ?? false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Phone Call',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp()), // Navigate to SecondPage
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _numberController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Enter Phone Number',
                labelStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.phone),
              ),
            ),
            SizedBox(height: 16), // Add some space between the TextField and the Button
            ElevatedButton(
              onPressed: _callNumber,
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // Background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // Circular edges
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.call,
                    color: Colors.black, // Set the color to white
                  ),
                  SizedBox(width: 8), // Adjust the spacing between the icon and text
                  Text(
                    'Call',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


}



void main() {
  runApp(Call());
}
