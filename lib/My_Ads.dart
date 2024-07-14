import 'package:Online_Book_Shop/AddProduct.dart';
import 'package:flutter/material.dart';
class AdsScreen extends StatefulWidget {
  @override
  _AdsScreenState createState() => _AdsScreenState();
}

class _AdsScreenState extends State<AdsScreen> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
            length: 2,
            child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Text('My Ads',
                style: TextStyle(
                  color: Color.fromRGBO(0,48,52,1),
                  fontWeight: FontWeight.bold,
              ),
              ),
              bottom: TabBar(
                indicatorColor: Color.fromRGBO(0,48,52,1),
                labelColor: Color.fromRGBO(0,48,52,1),
                labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.0),
                tabs: [
                  Tab(text: 'ADS'),
                  Tab(text: 'FAVOURITES'),

                ],
              ),
            ),
                    body: Container(
                      width: MediaQuery.of(context).size.width,
                      child: TabBarView(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                              children:<Widget>[



                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                  child: ButtonTheme(
                                    minWidth: 230.0,
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
                                          MaterialPageRoute(builder: (context) => ProductListPage()),
                                        );
                                      },
                                      child: Icon(
                                        Icons.production_quantity_limits_outlined,
                                        size: 100,
                                      ),
                                    ),

                                  ),
                                )],
                              ),

                              ],
                              ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:<Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.black12,
                                      width: 1,
                                    )
                                  )
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                      child: Image(
                                        image : AssetImage('assets/homescreen/hopt3.jpg'),
                                        width : 100,
                                        height: 100,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(2, 0, 0, 0),
                                          child: Text('\u0024 200',
                                            style: TextStyle(
                                              color: Color.fromRGBO(0,48,52,1),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(2, 0, 20, 0),
                                          child: Text('New',
                                            style: TextStyle(
                                              color: Color.fromRGBO(0,48,52,1),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(2, 0, 0, 0),
                                          child: Text('Latest Edition',
                                            style: TextStyle(
                                              color: Color.fromRGBO(0,48,52,1),
                                              fontSize: 10.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(2, 2, 5, 40),
                                      child: Icon(Icons.favorite,
                                        color: Color.fromRGBO(0,48,52,1),
                                      ),
                                    )
                              ],
                                ),
                              ),

                              Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                          color: Colors.black12,
                                          width: 1,
                                        )
                                    )
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                      child: Image(
                                        image : AssetImage('assets/homescreen/hopt1.jpg'),
                                        width : 100,
                                        height: 100,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(2, 0, 0, 0),
                                          child: Text('\u0024 100',
                                            style: TextStyle(
                                              color: Color.fromRGBO(0,48,52,1),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.fromLTRB(0, 0, 70, 0),
                                          child: Text('Holy-Quran',
                                            style: TextStyle(
                                              color: Color.fromRGBO(0,48,52,1),
                                              fontSize: 12.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(2, 2, 5, 40),
                                      child: Icon(Icons.favorite,
                                        color: Color.fromRGBO(0,48,52,1),
                                      ),
                                    )
                                  ],
                                ),
                              ),

                              Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                          color: Colors.black12,
                                          width: 1,
                                        )
                                    )
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                      child: Image(
                                        image : AssetImage('assets/homescreen/hopt6.jpg'),
                                        width : 100,
                                        height: 100,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(padding: EdgeInsets.fromLTRB(2, 0, 0, 0),
                                            child: Text('\u0024 250',
                                              style: TextStyle(
                                                color: Color.fromRGBO(0,48,52,1),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        Padding(padding: EdgeInsets.fromLTRB(2, 2, 60, 0),
                                          child: Text('Ownword Maths',
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              color: Color.fromRGBO(0,48,52,1),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(2, 2, 50, 0),
                                          child: Text('4th-Edition',
                                            style: TextStyle(
                                              color: Color.fromRGBO(0,48,52,1),
                                              fontSize: 10.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(2, 2, 5, 40),
                                      child: Icon(Icons.favorite,
                                        color: Color.fromRGBO(0,48,52,1),
                                      ),
                                    )
                                  ],
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