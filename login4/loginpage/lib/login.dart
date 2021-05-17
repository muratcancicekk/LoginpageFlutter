import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.orange[900],
              Colors.orange[800],
              Colors.orange[400],
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            headerBuild(),
            mainBuild(size),
          ],
        ),
      ),
    );
  }

  Expanded mainBuild(Size size) {
    return Expanded(
      flex: 15,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(55),
            topRight: Radius.circular(55),
          ),
          color: Colors.white,
        ),
        child: Column(
          children: [
            emailTextBuild(),
            passBuild(),
            forgotpassBuild(),
            Spacer(
              flex: 2,
            ),
            loginBuild(size),
            Spacer(
              flex: 4,
            ),
            Expanded(
              flex: 2,
              child: Text(
                'Continue with social media',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Spacer(
              flex: 2,
            ),
            accountBuild(),
            Spacer(
              flex: 4,
            ),
          ],
        ),
      ),
    );
  }

  Expanded accountBuild() {
    return Expanded(
      flex: 3,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.blueAccent,
              ),
              child: Text('Facebook', style: TextStyle(color: Colors.white)),
            ),
          ),
          Spacer(),
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.black,
              ),
              child: Text(
                'Github',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Expanded loginBuild(Size size) {
    return Expanded(
      flex: 3,
      child: Container(
        width: size.width * 0.6,
        margin: EdgeInsets.symmetric(horizontal: 70),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.deepOrange,
        ),
        child: Text('Login', style: TextStyle(color: Colors.white)),
      ),
    );
  }

  Expanded forgotpassBuild() {
    return Expanded(
      flex: 2,
      child: Container(
        alignment: Alignment.center,
        child: Text(
          'Forgot Password?',
          style: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }

  Expanded passBuild() {
    return Expanded(
      flex: 7,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 40),
        decoration: BoxDecoration(
          color: Colors.grey[50],
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Password',
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ),
      ),
    );
  }

  Expanded emailTextBuild() {
    return Expanded(
      flex: 7,
      child: Container(
        margin: EdgeInsets.only(top: 40, left: 40, right: 40),
        decoration: BoxDecoration(
          color: Colors.grey[50],
          border: Border(
            bottom: BorderSide(
              color: Colors.grey[200],
              width: 1,
            ),
          ),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Email or Phone number',
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ),
      ),
    );
  }

  Expanded headerBuild() {
    return Expanded(
      flex: 6,
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Expanded(
          flex: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              Text(
                'Welcome Back',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
