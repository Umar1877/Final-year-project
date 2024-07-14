import 'package:Online_Book_Shop/ArtandDesign.dart';
import 'package:Online_Book_Shop/Funny.dart';
import 'package:Online_Book_Shop/Funny_Book.dart';
import 'package:Online_Book_Shop/History_Book.dart';
import 'package:Online_Book_Shop/Islamic.dart';
import 'package:Online_Book_Shop/IslamicBook.dart';
import 'package:Online_Book_Shop/Literature_Book.dart';
import 'package:Online_Book_Shop/Science.dart';
import 'package:Online_Book_Shop/Sell.dart';
import 'package:Online_Book_Shop/bell.dart';
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

import 'main.dart';

//Product({this.name, this.email, this.address});

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  late String name, name2, price, b1, b2, b3, b4, b5, b6;
  String selectedCity = "Multan,PAK";
  List<String> cities = ["Multan,PAK", "Lahore,PAK", "Karachi,PAK", "Vehari,PAK", "Islamabad,PAK"];

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
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
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
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
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
    padding: const EdgeInsets.fromLTRB(15, 20, 13, 5),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        width: 330,
        height: 70,
        padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
        child: TextField(
          autocorrect: true,
          onSubmitted: (value) {
            if (value.toLowerCase() == "quran" && selectedCity == "Karachi,PAK") {
              // Navigate to IslamicBook page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Product0()),
              );
            }
            else if (value.toLowerCase() == "c++"&& selectedCity == "Karachi,PAK") {
              // Navigate to Funny_Books page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>Product2()),
              );
            }
            else if (value.toLowerCase() == "human rights"&& selectedCity == "Karachi,PAK") {
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
            else if (value.toLowerCase() == "environment and ecology"&& selectedCity == "Karachi,PAK") {
              // Navigate to Funny_Books page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Product4()),
              );
            }
            else if (value.toLowerCase() == "in the heart of the sea"&& selectedCity == "Karachi,PAK") {
              // Navigate to Funny_Books page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Product5()),
              );
            }
            else if (value.toLowerCase() == "onward maths"&& selectedCity == "Karachi,PAK") {
              // Navigate to Funny_Books page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Product6()),
              );
            }
            else if (value.toLowerCase() == "sahih bukhari"&& selectedCity == "Karachi,PAK") {
              // Navigate to Funny_Books page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Product7()),
              );
            }
            else if (value.toLowerCase() == "sahih muslim"&& selectedCity == "Karachi,PAK") {
              // Navigate to Funny_Books page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Product8()),
              );
            }
            else if (value.toLowerCase() == "sunan abi dawud"&& selectedCity == "Karachi,PAK") {
              // Navigate to Funny_Books page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Product9()),
              );
            }
            else if (value.toLowerCase() == "sunan nasai"&& selectedCity == "Karachi,PAK") {
              // Navigate to Funny_Books page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Product10()),
              );
            }
            else if (value.toLowerCase() == "jami tirmidhi"&& selectedCity == "Karachi,PAK") {
              // Navigate to Funny_Books page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Product11()),
              );
            }
            else if (value.toLowerCase() == "the adulterants"&& selectedCity == "Karachi,PAK") {
              // Navigate to Funny_Books page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Product12()),
              );
            }
            else if (value.toLowerCase() == "the calling for charli"&& selectedCity == "Vehari,PAK") {
              // Navigate to Funny_Books page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Product13()),
              );
            }
            else if (value.toLowerCase() == "eating people is wrong"&& selectedCity == "Lahore,PAK") {
              // Navigate to Funny_Books page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Product14()),
              );
            }
            else if (value.toLowerCase() == "people i want to punch the throat"&& selectedCity == "Lahore,PAK") {
              // Navigate to Funny_Books page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Product15()),
              );
            }
            else if (value.toLowerCase() == "portable curiosities"&& selectedCity == "Multan,PAK") {
              // Navigate to Funny_Books page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Product16()),
              );
            }
            else if (value.toLowerCase() == "the adulterants"&& selectedCity == "Islamabad,PAK") {
              // Navigate to Funny_Books page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Product17()),
              );
            }
            else if (value.toLowerCase() == "ancient world"&& selectedCity == "Karachi,PAK") {
              // Navigate to Funny_Books page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Product18()),
              );
            }
            else if (value.toLowerCase() == "world history"&& selectedCity == "Vehari,PAK") {
              // Navigate to Funny_Books page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Product19()),
              );
            }
            else if (value.toLowerCase() == "toward understanding islam"&& selectedCity == "Lahore,PAK") {
              // Navigate to Funny_Books page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Product20()),
              );
            }
            else if (value.toLowerCase() == "the great partitation"&& selectedCity == "Lahore,PAK") {
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
            else if (value.toLowerCase() == "a backgroung of english literature"&& selectedCity == "Lahore,PAK") {
              // Navigate to Funny_Books page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Product22()),
              );
            }
            else if (value.toLowerCase() == "english literature"&& selectedCity == "Vehari,PAK") {
              // Navigate to Funny_Books page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Product23()),
              );
            }
            else if (value.toLowerCase() == "history of english literature"&& selectedCity == "Karachi,PAK") {
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
                    content: Text("Sorry, there are currently no books available in the selected City."),
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
        ),
      ),
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
                                  child: GestureDetector(
                                    onTap: () {
                                      // Navigate to another page here
                                      // For example:
                                       Navigator.push(context, MaterialPageRoute(builder: (context) => Sell()));
                                    },
                                    child: Text(
                                      "see all",
                                      style: TextStyle(
                                        color: Color.fromRGBO(0, 48, 52, 1),
                                        //fontWeight: FontWeight.bold,
                                        letterSpacing: .1,
                                        fontSize: 16,
                                      ),
                                    ),
                                  )

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
                                                builder: (context) => Product0(),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 10, 5, 10),
                                            height: 160,
                                            // width: 100,
                                            child: Image.asset(
                                              "assets/homescreen/hopt1.jpg",
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 5, 10, 5),
                                          child: Text(
                                            '\u0024 100',
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
                                              "HOLY-QURAN Latest Version",
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
                                            "2024 - NEW",
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
                                                builder: (context) => Product2(

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
                                              "assets/homescreen/hopt3.jpg",
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 5, 10, 5),
                                          child: Text(
                                            '\u0024 200',
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
                                              "OOP USING C++",
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
                                            "2017-Edition",
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
                            padding: const EdgeInsets.fromLTRB(8, 0, 5, 5),
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(221, 226, 228, 1),
                                  ),
                                  borderRadius: BorderRadius.circular(1.0),
                                ),
                                child: Column(
                                  //crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        Product3(),
                                                  ),
                                                );
                                              },
                                              child: Container(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          15, 10, 10, 5),
                                                  child: Container(
                                                    height: 50,
                                                    width: 40,
                                                    child: Image.asset(
                                                      "assets/homescreen/hban01.jpg",
                                                      fit: BoxFit.fitWidth,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 15),
                                                  child: Text(
                                                    'No Additional Plugins Needed',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            0, 48, 52, 1),
                                                        letterSpacing: .1,
                                                        fontSize: 9,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 3),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        padding:
                                                            const EdgeInsets
                                                                .fromLTRB(
                                                                2, 1, 2, 1),
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                            color:
                                                                Color.fromRGBO(
                                                                    221,
                                                                    226,
                                                                    228,
                                                                    1),
                                                          ),
                                                        ),
                                                        child: Text(
                                                          'AD',
                                                          style: TextStyle(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      0,
                                                                      48,
                                                                      52,
                                                                      1),
                                                              letterSpacing: .1,
                                                              fontSize: 8,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 10),
                                                        child: Text(
                                                          'Elementor',
                                                          style: TextStyle(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      0,
                                                                      48,
                                                                      52,
                                                                      1),
                                                              letterSpacing: .1,
                                                              fontSize: 9,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      90, 5, 5, 3),
                                              child: Container(
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.info_outline,
                                                      color: Color.fromRGBO(
                                                          133, 147, 144, 1),
                                                      size: 20,
                                                    ),
                                                    SizedBox(width: 5),
                                                    Icon(
                                                      MdiIcons.sendLockOutline,
                                                      color: Color.fromRGBO(
                                                          133, 147, 144, 1),
                                                      size: 20,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      child: Container(
                                        // height: 50,
                                        // width: 40,
                                        child: Image.asset(
                                          "assets/homescreen/hban1.jpg",
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
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
                                                    Product3(),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 10, 5, 10),
                                            height: 160,
                                            // width: 100,

                                            child: Image.asset(
                                              "assets/homescreen/Human-Rights.jpg",
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 5, 10, 5),
                                          child: Text(
                                            '\u0024 2500',
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
                                              "HUMAN RIGHTS",
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
                                            "AUTHER : MUHAMMAD ABDUL-BASIT  ",
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
                                                    Product4(),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 10, 5, 10),
                                            height: 160,
                                            // width: 100,
                                            child: Image.asset(
                                              "assets/homescreen/Environment.jpg",
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 5, 10, 5),
                                          child: Text(
                                            '\u0024 685',
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
                                          child: Text("ENVIRONMENT AND ECOLOGY",
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
                                            "AUTHER : VASALI ANAND",
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
                                                    Product5(),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 10, 5, 10),
                                            height: 160,
                                            // width: 100,
                                            child: Image.asset(
                                              "assets/homescreen/hopt5.jpg",
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 5, 10, 5),
                                          child: Text(
                                            '\u0024 199',
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
                                          child: Text("IN THE HEART OF THE SEA",
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
                                            "AUTHOR : NATHANIEL PHILBRICK",
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
                                                    Product6(),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 10, 5, 10),
                                            height: 160,
                                            // width: 100,
                                            child: Image.asset(
                                              "assets/homescreen/hopt6.jpg",
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 5, 10, 3),
                                          child: Text(
                                            '\u0024 250',
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
                                          child: Text("ONWARD MATHS",
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
                                            "AUTHER : DR.EVELYN TAN,NEO SEOW LING",
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
                                                  "BURAWALA, PAKISTAN",
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
