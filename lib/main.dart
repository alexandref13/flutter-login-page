import 'package:flutter/material.dart';
import 'Animation/FadeAnimation.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/background.png'),
                        fit: BoxFit.fill),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 17,
                        width: 100,
                        height: 230,
                        child: FadeAnimation(2.3, Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/light-1.png'),
                            ),
                          ),
                        ),
                      )),
                      Positioned(
                        bottom: 220,
                        left: 170,
                        width: 80,
                        height: 190,
                        child: FadeAnimation(2.6, Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/light-2.png'),
                            ),
                          ),
                        ),
                      )),
                      Positioned(
                        bottom: 180,
                        right: 40,
                        width: 80,
                        height: 240,
                        child: FadeAnimation(2.8, Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/clock.png'),
                            ),
                          ),
                        ),
                      )),
                      Positioned(
                        child: Container(
                          padding: EdgeInsets.only(top: 100),
                          child: Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                  letterSpacing: 10),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(143, 148, 251, .7),
                              blurRadius: 10,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Email or phone number',
                                    hintStyle: TextStyle(color: Colors.grey)),
                              ),
                            ),
                            Divider(),
                            Container(
                              padding: EdgeInsets.all(8),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Password',
                                    hintStyle: TextStyle(color: Colors.grey)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(143, 148, 251, 1),
                                Color.fromRGBO(143, 148, 251, .5),
                              ])),
                          child: Center(
                            child: MaterialButton(
                                onPressed: () {},
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )),
                          )),
                      SizedBox(
                        height: 100,
                      ),
                      Text('Forgot password',
                          style: TextStyle(
                            color: Color.fromRGBO(143, 148, 251, 1),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
