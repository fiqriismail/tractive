import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../helpers/tractive_colors.dart';

class NewAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: TractivColors.drab,
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Image.asset(
                  'assets/images/logo_stacked_color.png',
                ),
                margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(40, 0, 0, 100),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Create a',
                            style: TextStyle(
                                fontFamily: 'Coolvetica',
                                fontSize: 40,
                                color: TractivColors.snow),
                          ),
                          Text(
                            'New Account',
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
                            'For the best experience',
                            style: TextStyle(
                                fontFamily: 'Coolvetica',
                                fontSize: 25,
                                color: TractivColors.snow),
                          ),
                          Text(
                            'with Tractiv',
                            style: TextStyle(
                                fontFamily: 'Coolvetica',
                                fontSize: 25,
                                color: TractivColors.snow),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            child: FlatButton(
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: TractivColors.snow,
                                ),
                              ),
                              onPressed: () {},
                            ),
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: 2.0,
                                  color: TractivColors.rust,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: FlatButton(
                            child: Text(
                              'Log In',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: TractivColors.slate,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: FlatButton(
                        color: TractivColors.snow,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: TractivColors.snow),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              child: Icon(
                                Icons.email,
                                color: TractivColors.fossil,
                              ),
                              margin: EdgeInsets.all(10),
                            ),
                            Text(
                              'Signup with email',
                              style: TextStyle(
                                  color: TractivColors.oynx,
                                  fontSize: 16,
                                  fontFamily: 'BigNoodle',
                                  letterSpacing: 2),
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: TractivColors.sage),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(12),
                          child: Text(
                            'Signup with phone number',
                            style: TextStyle(
                                color: TractivColors.snow,
                                fontSize: 16,
                                fontFamily: 'BigNoodle',
                                letterSpacing: 2),
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
