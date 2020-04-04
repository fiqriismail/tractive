import 'dart:ui';

import 'package:flutter/material.dart';

import '../helpers/tractive_colors.dart';
import './new_account.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: TractivColors.drab,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: <Widget>[
                Image.asset(
                  'assets/images/splash.jpg',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.6,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  bottom: 40,
                  child: Image.asset('assets/images/logo_white.png'),
                )
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Track Your',
                    style: TextStyle(
                        fontFamily: 'Coolvetica',
                        fontSize: 40,
                        color: TractivColors.snow),
                  ),
                  Text(
                    'Active Lifestyle',
                    style: TextStyle(
                        fontFamily: 'Coolvetica',
                        fontSize: 40,
                        color: TractivColors.snow),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Divider(
                      thickness: 2,
                      color: TractivColors.snow,
                    ),
                  ),
                  Text(
                    'With goal a driven approach',
                    style: TextStyle(
                        fontFamily: 'Coolvetica',
                        fontSize: 25,
                        color: TractivColors.snow),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              color: TractivColors.rust,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Get Started',
                          style: TextStyle(
                              fontFamily: 'BigNoodle',
                              color: TractivColors.snow,
                              letterSpacing: 3,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: double.infinity,
                    child: FlatButton(
                      color: Color(0xFFC4714B),
                      child: Icon(
                        Icons.navigate_next,
                        color: TractivColors.snow,
                        size: 32,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NewAccount()),
                        );
                      },
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
