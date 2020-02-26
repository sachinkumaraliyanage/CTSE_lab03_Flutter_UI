import 'package:flutter/material.dart';
import 'FullBackground.dart';
import 'LoginPage.dart';
import 'ReviewsPage.dart';

//sachin kumara Liyanage
//IT17152938
class HomePage extends StatelessWidget {
  final double _opacity=0.7;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
//      appBar: AppBar(
//        title: Text('sachin'),
//      ),
          body: new Stack(
            children: <Widget>[
              new FullBackground('assets/img/back01.jpg', 3.0, 3.0, 0.2),
          new Center(
            child: new SingleChildScrollView(
                  child: new Center(
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Text(
                          'Treva Shop',
                          style: TextStyle(
                              fontFamily: 'ArchivoBlack',
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                              color: Colors.white),
                        ),
                        new Container(
                          height: 170.0,
                        ),
                        Divider(
                          color: Colors.white.withOpacity(_opacity),
                          thickness: 3.0,
                          height: 20.0,
                          indent: 150.0,
                          endIndent: 150.0,
                        ),
                        new Text(
                          'Get  best  product  in  treva  shop',
                          style: TextStyle(
//                        fontFamily: 'ArchivoBlack',
                              color: Colors.white.withOpacity(_opacity),
                              fontSize: 17),
                        ),
                        new Container(
                          height: 75.0,
                        ),
                        new SizedBox(
                          width: 270.0,
                          height: 43.0,
                          child: new OutlineButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => new LoginPage()),
                              );
                            },
                            child: Text(
                              "Signup",
                              style: TextStyle(
//                        fontFamily: 'ArchivoBlack',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white.withOpacity(_opacity),
                              ),
                            ),
                            borderSide: BorderSide(color: Colors.white.withOpacity(_opacity)),
                            shape: StadiumBorder(),
                          ),
                        ),
                        new Row(
                          children: <Widget>[
                            new Expanded(
                                child: new Divider(
                                  color: Colors.white.withOpacity(_opacity),
                                  thickness: 1.0,
                                  height: 50.0,
                                  indent: 90.0,
//                        endIndent: 150.0,
                                )),
                            new Text(
                              ' OR SKIP ',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white.withOpacity(_opacity),
                              ),
                            ),
                            new Expanded(
                                child: new Divider(
                                  color: Colors.white.withOpacity(_opacity),
                                  thickness: 1.0,
                                  height: 20.0,
//                            indent: 150.0,
                                  endIndent: 90.0,
                                )),
                          ],
                        ),
                        new SizedBox(
                          width: 270.0,
                          height: 43.0,
                          child: new OutlineButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => new ReviewsPage()),
                              );
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white.withOpacity(_opacity)),
                            ),
                            borderSide: BorderSide(color: Colors.white.withOpacity(_opacity)),
                            shape: StadiumBorder(),
                          ),
                        ),
                        new Container(height: 10,),
                      ],
                    ),
                  )
              )
              )
            ],
          )
      );
  }
}
