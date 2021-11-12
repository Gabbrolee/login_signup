import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  int _value = 1;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: EdgeInsets.fromLTRB(10.0, 70.0, 10.0, 0.0),
          child: Form(
            key: _formkey,
            child: Column(
              children: <Widget>[
                Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Please sign up to enter in a app',
                  style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 35.0,
                ),
                Text(
                  'Enter via social networks',
                  style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.fromLTRB(15, 0.0, 5.0, 0.0),
                        height: 60.0,
                        child: FlatButton(
                          onPressed: () {},
                          padding: EdgeInsets.all(10.0),
                          color: Colors.blue[300],
                          textColor: Colors.white,
                          child: Image.asset('assets/twitter.png'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 60.0,
                        child: FlatButton(
                          onPressed: () {},
                          padding: EdgeInsets.all(10.0),
                          color: Colors.blue[900],
                          textColor: Colors.white,
                          child: Image.asset('assets/facebook.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'or sign up with email',
                  style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 60.0,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            fillColor: Colors.white, hintText: 'Email',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                          validator: (email) => email != null && !EmailValidator.validate(email)
                          ?'Enter a valid email' : null,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 60.0,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              hintText: 'Password',
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                          validator: (password) => password != null && password.length < 8
                              ?'Please password must be more than 8 character' : null,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: <Widget>[
                    Radio(value: 1, groupValue: _value, onChanged: (value) {}),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text('I agree with private policy'),
                  ],
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
                          onPressed: () {
                            final form = _formkey.currentState!;
                            if (form.validate()){
                              Navigator.pushNamed(context, '/login');
                            }
                          },
                          child: Text("Sign up",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                backgroundColor: Colors.blue[700],
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 50.0,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signUp');
                        },
                        padding: EdgeInsets.fromLTRB(70.0, 0.0, 0.0, 0.0),
                        textColor: Colors.grey,
                        child: Text("Don't have an account?",
                            style: TextStyle(fontSize: 15)),
                      ),
                    ),
                    Container(
                      height: 50.0,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 60.0, 0.0),
                        textColor: Colors.blue,
                        child: Text("Login", style: TextStyle(fontSize: 15)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
