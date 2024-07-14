import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Contact_Chat.dart';
import 'Home.dart';
import 'AddProduct.dart';
import 'LoginScreen.dart';
import 'login.dart';
import 'main.dart';

class myProfile extends StatefulWidget {
  @override
  _myProfileState createState() => _myProfileState();
}

class _myProfileState extends State<myProfile> {
  TextEditingController _textEditingController = TextEditingController();
  String _name = "Bilal & Waseem";
  String _username = "@bilal&waseem";
  String _selectedAvatarImage = "assets/avatar.png";

  @override
  void initState() {
    super.initState();
    _loadProfileData();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  void _loadProfileData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _username = prefs.getString('username') ?? "@bilal&waseem";
      _selectedAvatarImage = prefs.getString('avatarImage') ?? "assets/avatar.png";
    });
  }

  void _saveUsername(String username) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', username);
  }

  void _saveAvatarImage(String avatarImage) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('avatarImage', avatarImage);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
          ),
        ),
        body: Container(
          color: Colors.white54,
          child: Column(
            children: [
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  _selectAvatarImage(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 65,
                      backgroundImage: AssetImage(_selectedAvatarImage),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      _launchFacebookURL();
                    },
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/download.png"),
                    ),
                  ),
                  const SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      _launchGoogleURL();
                    },
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/GooglePlus-logo-red.png"),
                    ),
                  ),
                  const SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      _launchTwitterURL();
                    },
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/1_Twitter-new-icon-mobile-app.jpg"),
                    ),
                  ),
                  const SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      _launchLinkedInURL();
                    },
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/600px-LinkedIn_logo_initials.png"),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  _editUsername(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _username,
                      style: TextStyle(fontWeight: FontWeight.w900, fontSize: 26),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Global auto enthusiasts: knowledge, community empowerment.",
                    style: TextStyle(fontSize: 8),
                  )
                ],
              ),
              const SizedBox(height: 15),
              Expanded(
                child: ListView(
                  children: [
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Chat()),
                        );
                      },
                      child: Card(
                        color: Colors.white70,
                        margin: const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const ListTile(
                          leading: Icon(
                            Icons.history,
                            color: Colors.black54,
                          ),
                          title: Text(
                            'Edit phone Number',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Card(
                      color: Colors.white70,
                      margin: const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          _launchOLX();
                        },
                        child: const ListTile(
                          leading: Icon(Icons.help_outline, color: Colors.black54),
                          title: Text(
                            'Help & Support OLX',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.black54),
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        _launchWhatsApp();
                      },
                      child: Card(
                        color: Colors.white70,
                        margin: const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const ListTile(
                          leading: Icon(
                            Icons.add_reaction_sharp,
                            color: Colors.black54,
                          ),
                          title: Text(
                            'Invite a Friend',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: Card(
                        color: Colors.white70,
                        margin: const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const ListTile(
                          leading: Icon(
                            Icons.logout,
                            color: Colors.black54,
                          ),
                          title: Text(
                            'Logout',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios_outlined),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _editName(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Edit Name"),
          content: TextField(
            controller: _textEditingController,
            decoration: InputDecoration(hintText: "Enter new name"),
          ),
          actions: <Widget>[
            TextButton(
              child: Text("Save"),
              onPressed: () {
                setState(() {
                  _name = _textEditingController.text;
                });
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _editUsername(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Edit Username"),
          content: TextField(
            controller: _textEditingController,
            decoration: InputDecoration(hintText: "Enter new username"),
          ),
          actions: <Widget>[
            TextButton(
              child: Text("Save"),
              onPressed: () {
                setState(() {
                  _username = _textEditingController.text;
                });
                _saveUsername(_username);
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _selectAvatarImage(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Select Avatar"),
          content: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: List.generate(
                10,
                    (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        // Assuming you have 10 different avatar images in your assets
                        _selectedAvatarImage = "assets/avatar_$index.png";
                      });
                      _saveAvatarImage(_selectedAvatarImage);
                      Navigator.of(context).pop();
                    },
                    child: CircleAvatar(
                      maxRadius: 30,
                      backgroundImage: AssetImage("assets/avatar_$index.png"),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }

  void _launchWhatsApp() async {
    String phoneNumber = '+923074892233'; // Pakistani phone number in international format
    String message = 'Check out this amazing app!';
    String url = 'https://wa.me/$phoneNumber?text=${Uri.encodeFull(message)}';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchOLX() async {
    String olxUrl = 'olx://'; // URL scheme or intent for OLX app
    if (await canLaunch(olxUrl)) {
      await launch(olxUrl);
    } else {
      // OLX app not available, open OLX website
      await launch('https://www.olx.com');
    }
  }

  void _launchFacebookURL() async {
    String facebookUrl = 'facebook://';
    if (await canLaunch(facebookUrl)) {
      await launch(facebookUrl);
    } else {
      await launch('https://www.facebook.com');
    }
  }

  void _launchGoogleURL() async {
    const googleUrl = 'google://';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      await launch('https://www.google.com');
    }
  }

  void _launchTwitterURL() async {
    const twitterUrl = 'twitter://';
    if (await canLaunch(twitterUrl)) {
      await launch(twitterUrl);
    } else {
      await launch('https://www.twitter.com');
    }
  }

  void _launchLinkedInURL() async {
    const linkedinUrl = 'linkedin://';
    if (await canLaunch(linkedinUrl)) {
      await launch(linkedinUrl);
    } else {
      await launch('https://www.linkedin.com');
    }
  }
}
