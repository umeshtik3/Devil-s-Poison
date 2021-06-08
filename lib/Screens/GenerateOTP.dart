import 'package:flutter/material.dart';

class GenerateOTP extends StatelessWidget {
  const GenerateOTP({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.indigo[800],
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.indigo[800],
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 70),
              child: Image.asset(
                'assets/smsicon.png',
                color: Colors.white,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
              // color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Country Code',
                        labelStyle: TextStyle(fontSize: 28),
                        border: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 5)),
                        icon: Icon(
                          Icons.flag,
                          size: 40,
                          color: Colors.indigo.shade300,
                        )),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Enter Your Number',
                        labelStyle: TextStyle(fontSize: 28),
                        border: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 5)),
                        icon: Icon(
                          Icons.dialpad,
                          size: 40,
                          color: Colors.indigo.shade300,
                        )),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    """ We will Send you One Time SMS carrier charges \n                              may apply""",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {
          //OTP Generation Method
        },
        child: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
