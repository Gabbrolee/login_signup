import 'package:flutter/material.dart';
class ThankyouPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 70.0, 10.0, 0.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Image(
                image: AssetImage('assets/thankPic.png'),
                height: 390,
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Text(
              'Thank you!',
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Now, welcome to our beautiful app!',
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      color: Colors.blue[700],
                    ),
                    margin: EdgeInsets.all(10),
                    height: 60.0,
                    child: TextButton(
                      onPressed: (){},
                      child: Text("Let's go",
                          style: TextStyle(fontSize: 15, color: Colors.white,
                            backgroundColor: Colors.blue[700],
                          )),

                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
