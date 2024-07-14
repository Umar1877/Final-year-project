import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

import 'Home.dart';
import 'main.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'CONTACT',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold, // Set font weight to bold
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
          child: WhatsAppReplyButton(),
        ),
      ),
    );
  }
}

class WhatsAppReplyButton extends StatefulWidget {
  @override
  _WhatsAppReplyButtonState createState() => _WhatsAppReplyButtonState();
}

class _WhatsAppReplyButtonState extends State<WhatsAppReplyButton> {
  final TextEditingController _phoneNumberController =
  TextEditingController(text: '+923048868988');
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: TextField(
            controller: _phoneNumberController,
            decoration: InputDecoration(
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: TextField(
            controller: _messageController,
            decoration: InputDecoration(
              labelText: 'Enter Message',
            ),
          ),
        ),
        SizedBox(height: 80,),
        SizedBox(
          width: 600,
          height: 40,
          child: ElevatedButton(
            onPressed: () {
              sendReply();
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.green, // Background color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5), // Set border radius to 0 for a square (cube)
              ),
            ),
            child: Text(
              'Send',
              style: TextStyle(color: Colors.black),
            ),
          ),
        )

      ],
    );
  }

  Future<void> sendReply() async {
    final link = WhatsAppUnilink(
      phoneNumber: _phoneNumberController.text,
      text: _messageController.text.isNotEmpty
          ? _messageController.text
          : 'Hey, Flutter!',
    );

    await launch('$link');
  }

  @override
  void dispose() {
    _phoneNumberController.dispose();
    _messageController.dispose();
    super.dispose();
  }
}
