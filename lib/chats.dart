import 'package:flutter/material.dart';

import 'Contact_Chat.dart';
class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Chats To Buy & Sell Books',
            style: TextStyle(
              color: Color.fromRGBO(0,48,52,1),
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: TabBar(
            indicatorColor: Color.fromRGBO(0,48,52,1),
            labelColor: Color.fromRGBO(0,48,52,1),
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            tabs: [
              Tab(text: 'ALL'),
              Tab(text: 'BUYING'),
              Tab(text: 'SELLING'),
            ],
          ),

        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: TabBarView(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget> [

                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:<Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 90, 0, 0),
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 60.0),

                          ),
                        ),
                      ]
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                    child: Container(alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 60.0),

                    ),
                  ),

                  Container(
                    child: Center(
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(0, 48, 52, 1),
                          ),
                          foregroundColor: MaterialStateProperty.all<Color>(
                            Colors.white,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Chat()),
                          );
                        },
                        child: Icon(
                          Icons.chat,
                          size: 100,
                        ),


                      ),

                    ),
                  ),

                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget> [


                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:<Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 90, 0, 0),
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 60.0),

                          ),
                        ),
                      ]
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),

                    ),
                  ),

                  Center(
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(0, 48, 52, 1),
                        ),
                        foregroundColor: MaterialStateProperty.all<Color>(
                          Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Chat()),
                        );
                      },
                      child: Icon(
                        Icons.chat,
                        size: 100,
                      ),
                    ),

                  ),
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget> [

                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:<Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 90, 0, 0),
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 60.0),

                          ),
                        ),
                      ]
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),

                    ),
                  ),

                  Container(
                    alignment: Alignment.center,
                    child: Center(
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(0, 48, 52, 1),
                          ),
                          foregroundColor: MaterialStateProperty.all<Color>(
                            Colors.white,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Chat()),
                          );
                        },
                        child: Icon(
                          Icons.chat,
                          size: 100,
                        ),
                      ),

                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );

  }
}