import 'package:Online_Book_Shop/Home.dart';
import 'package:Online_Book_Shop/IslamicBook.dart';
import 'package:Online_Book_Shop/Literature_Book.dart';
import 'package:Online_Book_Shop/product/product10.dart';
import 'package:Online_Book_Shop/product/product11.dart';
import 'package:Online_Book_Shop/product/product12.dart';
import 'package:Online_Book_Shop/product/product13.dart';
import 'package:Online_Book_Shop/product/product14.dart';
import 'package:Online_Book_Shop/product/product15.dart';
import 'package:Online_Book_Shop/product/product16.dart';
import 'package:Online_Book_Shop/product/product17.dart';
import 'package:Online_Book_Shop/product/product18.dart';
import 'package:Online_Book_Shop/product/product19.dart';
import 'package:Online_Book_Shop/product/product20.dart';
import 'package:Online_Book_Shop/product/product21.dart';
import 'package:Online_Book_Shop/product/product22.dart';
import 'package:Online_Book_Shop/product/product23.dart';
import 'package:Online_Book_Shop/product/product24.dart';
import 'package:Online_Book_Shop/product/product7.dart';
import 'package:Online_Book_Shop/product/product8.dart';
import 'package:Online_Book_Shop/product/product9.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:Online_Book_Shop/product/product.dart';
import 'package:Online_Book_Shop/product/product2.dart';
import 'package:Online_Book_Shop/product/product3.dart';
import 'package:Online_Book_Shop/product/product4.dart';
import 'package:Online_Book_Shop/product/product6.dart';
import 'package:Online_Book_Shop/product/product5.dart';

import 'Funny_Book.dart';
import 'main.dart';

//Product({this.name, this.email, this.address});

class History_Book extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<History_Book> {
  late String name, name2, price, b1, b2, b3, b4, b5, b6;
  String selectedCity = "Multan, PAK";
  List<String> cities = ["Multan, PAK", "Lahore", "Karachi", "Vehari", "Islamabad"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Home'),
      // ),
      backgroundColor: Color.fromRGBO(245, 245, 245, 1),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            width: 1.0,
                            color: Color.fromRGBO(224, 227, 228, 1)),
                      ),
                    ),
                    // color: Color.fromRGBO(248, 250, 249, 1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 10),
                          child: Row(
                            children: [

                              Container(
                                decoration:  BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        width: 1.0,
                                        color: Color.fromRGBO(224, 227, 228, 1)),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(10, 15, 0, 10),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.place,
                                            color: Color.fromRGBO(0, 48, 52, 1),
                                            size: 28,
                                          ),
                                          Text(
                                            selectedCity,
                                            style: TextStyle(
                                              color: Color.fromRGBO(0, 48, 52, 1),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                          DropdownButton<String>(
                                            icon: Icon(
                                              Icons.keyboard_arrow_down,
                                              color: Color.fromRGBO(0, 48, 52, 1),
                                              size: 28,
                                            ),
                                            items: cities.map((String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value),
                                              );
                                            }).toList(),
                                            onChanged: (value) {
                                              setState(() {
                                                selectedCity = value!;
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(15, 0, 13, 5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 280,
                                            height: 70,
                                            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                            child: TextField(
                                              autocorrect: true,
                                              onSubmitted: (value) {
                                                if (value.toLowerCase() == "quran") {
                                                  // Navigate to IslamicBook page
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => Product0()),
                                                  );
                                                } else if (value.toLowerCase() == "c++") {
                                                  // Navigate to Funny_Books page
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) =>Product2()),
                                                  );
                                                }
                                                else if (value.toLowerCase() == "human rights") {
                                                  // Navigate to Funny_Books page
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => Product3()),
                                                  );
                                                }
                                                else if (value.toLowerCase() == "home") {
                                                  // Navigate to Funny_Books page
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => MyApp()),
                                                  );
                                                }
                                                else if (value.toLowerCase() == "environment and ecology") {
                                                  // Navigate to Funny_Books page
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => Product4()),
                                                  );
                                                }
                                                else if (value.toLowerCase() == "in the heart of the sea") {
                                                  // Navigate to Funny_Books page
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => Product5()),
                                                  );
                                                }
                                                else if (value.toLowerCase() == "onward maths") {
                                                  // Navigate to Funny_Books page
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => Product6()),
                                                  );
                                                }
                                                else if (value.toLowerCase() == "sahih bukhari") {
                                                  // Navigate to Funny_Books page
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => Product7()),
                                                  );
                                                }
                                                else if (value.toLowerCase() == "sahih muslim") {
                                                  // Navigate to Funny_Books page
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => Product8()),
                                                  );
                                                }
                                                else if (value.toLowerCase() == "sunan abi dawud") {
                                                  // Navigate to Funny_Books page
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => Product9()),
                                                  );
                                                }
                                                else if (value.toLowerCase() == "sunan nasai") {
                                                  // Navigate to Funny_Books page
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => Product10()),
                                                  );
                                                }
                                                else if (value.toLowerCase() == "jami tirmidhi") {
                                                  // Navigate to Funny_Books page
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => Product11()),
                                                  );
                                                }
                                                else if (value.toLowerCase() == "the adulterants") {
                                                  // Navigate to Funny_Books page
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => Product12()),
                                                  );
                                                }
                                                else if (value.toLowerCase() == "the calling for charli") {
                                                  // Navigate to Funny_Books page
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => Product13()),
                                                  );
                                                }
                                                else if (value.toLowerCase() == "eating people is wrong") {
                                                  // Navigate to Funny_Books page
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => Product14()),
                                                  );
                                                }
                                                else if (value.toLowerCase() == "people i want to punch the throat") {
                                                  // Navigate to Funny_Books page
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => Product15()),
                                                  );
                                                }
                                                else if (value.toLowerCase() == "portable curiosities") {
                                                  // Navigate to Funny_Books page
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => Product16()),
                                                  );
                                                }
                                                else if (value.toLowerCase() == "the adulterants") {
                                                  // Navigate to Funny_Books page
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => Product17()),
                                                  );
                                                }
                                                else if (value.toLowerCase() == "ancient world") {
                                                  // Navigate to Funny_Books page
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => Product18()),
                                                  );
                                                }
                                                else if (value.toLowerCase() == "world history") {
                                                  // Navigate to Funny_Books page
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => Product19()),
                                                  );
                                                }
                                                else if (value.toLowerCase() == "toward understanding islam") {
                                                  // Navigate to Funny_Books page
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => Product20()),
                                                  );
                                                }
                                                else if (value.toLowerCase() == "the great partitation") {
                                                  // Navigate to Funny_Books page
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => Product21()),
                                                  );
                                                }
                                                else if (value.toLowerCase() == "") {
                                                  // Navigate to Funny_Books page
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => MyApp()),
                                                  );
                                                }
                                                else if (value.toLowerCase() == "a backgroung of english literature") {
                                                  // Navigate to Funny_Books page
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => Product22()),
                                                  );
                                                }
                                                else if (value.toLowerCase() == "english literature") {
                                                  // Navigate to Funny_Books page
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => Product23()),
                                                  );
                                                }
                                                else if (value.toLowerCase() == "history of english literature") {
                                                  // Navigate to Funny_Books page
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => Product24()),
                                                  );
                                                }
                                                else {
                                                  // Show message
                                                  showDialog(
                                                    context: context,
                                                    builder: (BuildContext context) {
                                                      return AlertDialog(
                                                        title: Text("No Books Available"),
                                                        content: Text("Sorry, there are currently no books available."),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () {
                                                              Navigator.of(context).pop();
                                                            },
                                                            child: Text("OK"),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                }

                                              },
                                              decoration: InputDecoration(
                                                contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 1),
                                                hintText: 'Search Books...',
                                                prefixIcon: GestureDetector(
                                                  onTap: () {
                                                    // This logic will be handled by onSubmitted event
                                                  },
                                                  child: Icon(
                                                    Icons.search,
                                                    color: Color.fromRGBO(0, 48, 52, 1),
                                                  ),
                                                ),
                                                hintStyle: TextStyle(color: Colors.grey),
                                                filled: true,
                                                fillColor: Colors.white70,
                                                enabledBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                                  borderSide: BorderSide(
                                                      color: Color.fromRGBO(0, 48, 52, 1), width: 1.5),
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                                  borderSide: BorderSide(
                                                      color: Color.fromRGBO(0, 48, 52, 1), width: 1.5),
                                                ),
                                              ),
                                            ),),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(7, 0, 0, 25),
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => MyApp()),
                                                );
                                              },
                                              child: Icon(
                                                MdiIcons.home,
                                                color: Color.fromRGBO(0, 48, 52, 1),
                                                size: 35,
                                              ),
                                            ),
                                          )
                                          // Added closing bracket for Container


                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    // margin: EdgeInsets.symmetric(vertical: 20.0),
                    height: 160.0,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 15, 15, 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Browse categories",
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 48, 52, 1),
                                    letterSpacing: .1,
                                    fontSize: 16),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(1, 0, 1, .5),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                          color: Color.fromRGBO(0, 48, 52, 1),
                                          width: 2.5,
                                        ))),
                                child: Text(
                                  "see all",
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 48, 52, 1),
                                      //fontWeight: FontWeight.bold,
                                      letterSpacing: .1,
                                      fontSize: 16),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                          child: Container(
                            height: 90,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(30, 0, 0, 0),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          // Navigate to another screen when the image is tapped
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => IslamicBook()),
                                          );
                                        },
                                        child: Image.asset(
                                          "assets/homescreen/hm1.png",
                                          fit: BoxFit.fitWidth,
                                          height: 50,
                                          width: 50,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8),
                                        child: GestureDetector(
                                          onTap: () {
                                            // Navigate to another page when clicked
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => IslamicBook()),
                                            );
                                          },
                                          child: MouseRegion(
                                            cursor: SystemMouseCursors.click,
                                            child: Text(
                                              "Islamic",
                                              style: TextStyle(
                                                color: Color.fromRGBO(0, 48, 52, 1),
                                                letterSpacing: .1,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(60, 0, 0, 0),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          // Navigate to another screen when the image is tapped
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => Funny_Books()),
                                          );
                                        },
                                        child: Image.asset(
                                          "assets/homescreen/hm2.png",
                                          fit: BoxFit.fitWidth,
                                          height: 50,
                                          width: 50,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8),
                                        child: GestureDetector(
                                          onTap: () {
                                            // Navigate to another page when clicked
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => Funny_Books()),
                                            );
                                          },
                                          child: MouseRegion(
                                            cursor: SystemMouseCursors.click,
                                            child: Text(
                                              "Funny",
                                              style: TextStyle(
                                                color: Color.fromRGBO(0, 48, 52, 1),
                                                letterSpacing: .1,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(60, 0, 0, 0),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          // Navigate to another screen when the image is tapped
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => History_Book()),
                                          );
                                        },
                                        child: Image.asset(
                                          "assets/homescreen/hm3.png",
                                          fit: BoxFit.fitWidth,
                                          height: 50,
                                          width: 50,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8),
                                        child: GestureDetector(
                                          onTap: () {
                                            // Navigate to another page when clicked
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => History_Book()),
                                            );
                                          },
                                          child: MouseRegion(
                                            cursor: SystemMouseCursors.click,
                                            child: Text(
                                              "History",
                                              style: TextStyle(
                                                color: Color.fromRGBO(0, 48, 52, 1),
                                                letterSpacing: .1,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(60, 0, 0, 0),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          // Navigate to another screen when the image is tapped
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => Literature_Book()),
                                          );
                                        },
                                        child: Image.asset(
                                          "assets/homescreen/hm4.png",
                                          fit: BoxFit.fitWidth,
                                          height: 50,
                                          width: 50,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8),
                                        child: GestureDetector(
                                          onTap: () {
                                            // Navigate to another page when clicked
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) =>Literature_Book()),
                                            );
                                          },
                                          child: MouseRegion(
                                            cursor: SystemMouseCursors.click,
                                            child: Text(
                                              "Literature",
                                              style: TextStyle(
                                                color: Color.fromRGBO(0, 48, 52, 1),
                                                letterSpacing: .1,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(60, 0, 0, 0),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          // Navigate to another screen when the image is tapped
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => MyApp()),
                                          );
                                        },
                                        child: Image.asset(
                                          "assets/homescreen/hm5.png",
                                          fit: BoxFit.fitWidth,
                                          height: 50,
                                          width: 50,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Text(
                                          "ART & DESIGN",
                                          style: TextStyle(
                                              color:
                                              Color.fromRGBO(0, 48, 52, 1),
                                              letterSpacing: .1,
                                              fontSize: 12),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(60, 0, 0, 0),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          // Navigate to another screen when the image is tapped
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => History_Book()),
                                          );
                                        },
                                        child: Image.asset(
                                          "assets/homescreen/hm6.png",
                                          fit: BoxFit.fitWidth,
                                          height: 50,
                                          width: 50,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Column(
                                          children: [
                                            Text(
                                              "SCIENCE",
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 48, 52, 1),
                                                  letterSpacing: .1,
                                                  fontSize: 12),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(60, 0, 0, 0),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          // Navigate to another screen when the image is tapped
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => Literature_Book()),
                                          );
                                        },
                                        child: Image.asset(
                                          "assets/homescreen/hm7.png",
                                          fit: BoxFit.fitWidth,
                                          height: 50,
                                          width: 50,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Text(
                                          "MADICAL",
                                          style: TextStyle(
                                              color:
                                              Color.fromRGBO(0, 48, 52, 1),
                                              letterSpacing: .1,
                                              fontSize: 12),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(60, 0, 0, 0),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          // Navigate to another screen when the image is tapped
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => MyApp()),
                                          );
                                        },
                                        child: Image.asset(
                                          "assets/homescreen/hm8.png",
                                          fit: BoxFit.fitWidth,
                                          height: 50,
                                          width: 50,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Text(
                                          "Math",
                                          style: TextStyle(
                                              color:
                                              Color.fromRGBO(0, 48, 52, 1),
                                              letterSpacing: .1,
                                              fontSize: 12),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(50, 0, 0, 0),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          // Navigate to another screen when the image is tapped
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => Literature_Book()),
                                          );
                                        },
                                        child: Image.asset(
                                          "assets/homescreen/hm9.png",
                                          fit: BoxFit.fitWidth,
                                          height: 50,
                                          width: 50,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Text(
                                          "LAW",
                                          style: TextStyle(
                                              color:
                                              Color.fromRGBO(0, 48, 52, 1),
                                              letterSpacing: .1,
                                              fontSize: 12),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(50, 0, 0, 0),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          // Navigate to another screen when the image is tapped
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => History_Book()),
                                          );
                                        },
                                        child: Image.asset(
                                          "assets/homescreen/hm10.png",
                                          fit: BoxFit.fitWidth,
                                          height: 50,
                                          width: 50,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Text(
                                          "COMPUTER SCIENCE",
                                          style: TextStyle(
                                              color:
                                              Color.fromRGBO(0, 48, 52, 1),
                                              letterSpacing: .1,
                                              fontSize: 12),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(60, 0, 20, 0),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          // Navigate to another screen when the image is tapped
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => Funny_Books()),
                                          );
                                        },
                                        child: Image.asset(
                                          "assets/homescreen/hm11.png",
                                          fit: BoxFit.fitWidth,
                                          height: 50,
                                          width: 50,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Text(
                                          "ENVIRONMENTAL SCIENCES",
                                          style: TextStyle(
                                              color:
                                              Color.fromRGBO(0, 48, 52, 1),
                                              letterSpacing: .1,
                                              fontSize: 12),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 15, 15, 10),
                            child: Text(
                              "Fresh recommendations",
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 48, 52, 1),
                                  letterSpacing: .1,
                                  fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 6, 5, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    height: 300,
                                    width: 170,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(221, 226, 228, 1),
                                      ),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => Product18(),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 10, 5, 10),
                                            height: 160,
                                            // width: 100,
                                            child: Image.asset(
                                              "assets/history1.jpg",
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 5, 10, 5),
                                          child: Text(
                                            '\u0024 10',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    0, 48, 52, 1),
                                                letterSpacing: .1,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 0, 5, 1),
                                          child: Text(
                                              "ANCIENT WORLD",
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 48, 52, 1),
                                                  letterSpacing: .1,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 0, 5, 5),
                                          child: Text(
                                            "2020 - NEW",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    0, 48, 52, 1),
                                                letterSpacing: .1,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 0, 10, 2),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.location_on,
                                                color: Color.fromRGBO(
                                                    0, 48, 52, 1),
                                                size: 15,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5.0),
                                                child: Text(
                                                  "KARACHI, PAKISTAN",
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          0, 48, 52, 1),
                                                      letterSpacing: .1,
                                                      fontSize: 10,
                                                      fontWeight:
                                                      FontWeight.w300),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )),
                                Container(
                                    height: 300,
                                    width: 170,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(221, 226, 228, 1),
                                      ),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => Product19(

                                                ),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 10, 5, 10),
                                            height: 160,
                                            // width: 100,
                                            child: Image.asset(
                                              "assets/history2.jpg",
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 5, 10, 5),
                                          child: Text(
                                            '\u0024 20',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    0, 48, 52, 1),
                                                letterSpacing: .1,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 0, 5, 1),
                                          child: Text(
                                              "WORLD HISTORY",
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 48, 52, 1),
                                                  letterSpacing: .1,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 0, 5, 5),
                                          child: Text(
                                            "2013-Edition",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    0, 48, 52, 1),
                                                letterSpacing: .1,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 0, 10, 2),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.location_on,
                                                color: Color.fromRGBO(
                                                    0, 48, 52, 1),
                                                size: 10,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5.0),
                                                child: Text(
                                                  "VEHARI, PAKISTAN",
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          0, 48, 52, 1),
                                                      letterSpacing: .1,
                                                      fontSize: 10,
                                                      fontWeight:
                                                      FontWeight.w300),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 6, 5, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    height: 300,
                                    width: 170,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(221, 226, 228, 1),
                                      ),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    Product20(),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 10, 5, 10),
                                            height: 160,
                                            // width: 100,

                                            child: Image.asset(
                                              "assets/history3.jpg",
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 5, 10, 5),
                                          child: Text(
                                            '\u0024 15',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    0, 48, 52, 1),
                                                letterSpacing: .1,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 0, 5, 1),
                                          child: Text(
                                              "Toward Understanding Islam",
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 48, 52, 1),
                                                  letterSpacing: .1,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 0, 5, 5),
                                          child: Text(
                                            "AUTHER : Maicolm",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    0, 48, 52, 1),
                                                letterSpacing: .1,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 0, 10, 2),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.location_on,
                                                color: Color.fromRGBO(
                                                    0, 48, 52, 1),
                                                size: 15,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5.0),
                                                child: Text(
                                                  "Lahore, PAKISTAN",
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          0, 48, 52, 1),
                                                      letterSpacing: .1,
                                                      fontSize: 10,
                                                      fontWeight:
                                                      FontWeight.w300),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )),
                                Container(
                                    height: 300,
                                    width: 170,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(221, 226, 228, 1),
                                      ),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    Product21(),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 10, 5, 10),
                                            height: 160,
                                            // width: 100,
                                            child: Image.asset(
                                              "assets/history5.jpg",
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 5, 10, 5),
                                          child: Text(
                                            '\u0024 50',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    0, 48, 52, 1),
                                                letterSpacing: .1,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 0, 5, 1),
                                          child: Text("The Great Partition",
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 48, 52, 1),
                                                  letterSpacing: .1,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 0, 5, 5),
                                          child: Text(
                                            "AUTHER : JEN MANN",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    0, 48, 52, 1),
                                                letterSpacing: .1,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 0, 10, 2),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.location_on,
                                                color: Color.fromRGBO(
                                                    0, 48, 52, 1),
                                                size: 15,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5.0),
                                                child: Text(
                                                  "Lahore, PAK",
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          0, 48, 52, 1),
                                                      letterSpacing: .1,
                                                      fontSize: 10,
                                                      fontWeight:
                                                      FontWeight.w300),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 5, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    height: 300,
                                    width: 170,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(221, 226, 228, 1),
                                      ),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    Product16(),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 10, 5, 10),
                                            height: 160,
                                            // width: 100,
                                            child: Image.asset(
                                              "assets/funny6.jpg",
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 5, 10, 5),
                                          child: Text(
                                            '\u0024 19',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    0, 8, 52, 1),
                                                letterSpacing: .1,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 0, 5, 1),
                                          child: Text("Portable Curiosities",
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 48, 52, 1),
                                                  letterSpacing: .1,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 0, 5, 5),
                                          child: Text(
                                            "AUTHOR : Julia Koh",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    0, 48, 52, 1),
                                                letterSpacing: .1,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 0, 10, 2),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.location_on,
                                                color: Color.fromRGBO(
                                                    0, 48, 52, 1),
                                                size: 15,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5.0),
                                                child: Text(
                                                  "MULTAN, PAKISTAN",
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          0, 48, 52, 1),
                                                      letterSpacing: .1,
                                                      fontSize: 10,
                                                      fontWeight:
                                                      FontWeight.w300),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )),
                                Container(
                                    height: 300,
                                    width: 170,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(221, 226, 228, 1),
                                      ),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    Product17(),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 10, 5, 10),
                                            height: 160,
                                            // width: 100,
                                            child: Image.asset(
                                              "assets/funny1.jpg",
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 5, 10, 3),
                                          child: Text(
                                            '\u0024 20',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    0, 48, 52, 1),
                                                letterSpacing: .1,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 0, 5, 1),
                                          child: Text("The Aduluterants",
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 48, 52, 1),
                                                  letterSpacing: .1,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 0, 5, 5),
                                          child: Text(
                                            "AUTHER : Joe Dunthore",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    0, 48, 52, 1),
                                                letterSpacing: .1,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 0, 10, 2),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.location_on,
                                                color: Color.fromRGBO(
                                                    0, 48, 52, 1),
                                                size: 15,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5.0),
                                                child: Text(
                                                  "ISLAMABAD, PAKISTAN",
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          0, 48, 52, 1),
                                                      letterSpacing: .1,
                                                      fontSize: 10,
                                                      fontWeight:
                                                      FontWeight.w300),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
