import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'FullBackground.dart';
import 'ReviewsPage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new StateFullLoginPage();
  }
}

class StateFullLoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<StateFullLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: new Stack(

        children: <Widget>[
          new FullBackground('assets/img/back03.jpg', 3.0, 3.0, 0.2),
          new Center(
            child: new SingleChildScrollView(

              child: new Center(
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/img/logo.png',
                          width: 60.0,
                        ),
                        Text(
                          '  Theva Shop',
                          style: TextStyle(
                              fontFamily: 'ArchivoBlack',
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    new Container(
                      height: 70,
                    ),
                    new SizedBox(
                      width: 360.0,
                      height: 50.0,
                      child: new RaisedButton(
                        onPressed: () => Navigator.of(context).pop(),
                        color: Color.fromARGB(1000, 85, 78, 216),
                        shape: StadiumBorder(),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset('assets/img/fb.png',width: 30,),
                            Text(
                              " Login With Facebook",
                              style: TextStyle(
//                        fontFamily: 'ArchivoBlack',
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    new Container(
                      height: 10,
                    ),
                    new SizedBox(
                      width: 360.0,
                      height: 50.0,
                      child: new RaisedButton(
                        onPressed: () => Navigator.of(context).pop(),
                        color: Colors.white,
                        shape: StadiumBorder(),

                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset('assets/img/go.png',width: 30,),
                            Text(
                              "  Login With Google",
                              style: TextStyle(
//                        fontFamily: 'ArchivoBlack',
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black38,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    new Container(
                        height: 60,
                        child: new Center(child: new Text('OR',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18,),),)
                    ),
                    new Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                      child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.blueAccent,
                          ),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                              prefixIcon: Icon(Icons.email),
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "Email",
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blueAccent, width: 32.0),
                                  borderRadius: BorderRadius.circular(20.0)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white, width: 32.0),
                                  borderRadius: BorderRadius.circular(20.0)))),
                    ),
                    new Padding(
                      padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                      child: TextField(
                        obscureText:true,
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.blueAccent,
                          ),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                              prefixIcon: Icon(Icons.vpn_key),
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "Password",
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blueAccent, width: 32.0),
                                  borderRadius: BorderRadius.circular(20.0)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white, width: 32.0),
                                  borderRadius: BorderRadius.circular(20.0)))),
                    ),
                    new Container(
                        height: 40,
                        child: new Center(child: new Text(
                          'Not Have Account? Sign Up',
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 15,),),
                        )
                    ),
                    new Container(
                      height: 50,

                    ),
                    new SizedBox(
                      width: 360.0,
                      height: 55.0,
                      child: Container(
                        height: 50.0,
                        width: 10,
                        child: RaisedButton(

                          onPressed: () => Navigator.of(context).pop(),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                          padding: EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [Color.fromRGBO(37, 1, 66,1),Color.fromRGBO(90, 2, 157,1), Color.fromRGBO(129, 2, 227,1)],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(30.0)
                            ),
                            child: Container(
                              constraints: BoxConstraints(maxWidth: 360.0, minHeight: 75.0),
                              alignment: Alignment.center,
                              child: Text(
                                "Login",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
