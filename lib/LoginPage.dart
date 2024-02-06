import 'package:bull_stox/MyHomePage.dart';
import 'package:bull_stox/SplashPage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'RegistrationPage.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _useridController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 160,
                    width: 160,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1.5),
                        borderRadius: BorderRadius.circular(80)),
                    child: CircleAvatar(
                      backgroundImage: ExactAssetImage(
                        'assets/images/LoginScreen.png',
                      ),
                      backgroundColor: Colors.green.shade400,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Welcome Back',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
                child: TextFormField(
                  controller: _useridController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter Your Email Id',
                    prefixIcon: Icon(Icons.mail),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a Email Id';
                    }
                    String pattern = r'^[a-zA-Z0-9]+@gmail\.com$';
                    RegExp regExp = RegExp(pattern);

                    if (!regExp.hasMatch(value)) {
                      return 'Please enter a valid Email Id';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 20,
                  top: 10,
                ),
                child: TextFormField(
                  controller: _passwordController,
                  obscureText: _isObscured,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isObscured = !_isObscured;
                          });
                        },
                        icon: Icon(_isObscured
                            ? Icons.visibility
                            : Icons.visibility_off),
                      )),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Forgot Password',
                style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 15,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.indigo),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    minimumSize: Size(200, 50),
                  ),
                  onPressed: () async{

                    var sharedPref = await SharedPreferences.getInstance();
                    sharedPref.setBool(SplashPageState.KEYLOGIN, true);

                    if (_formKey.currentState?.validate() ?? false) {
                      // Perform login logic here
                      String username = _useridController.text;
                      String password = _passwordController.text;

                      // Replace this with your actual authentication logic
                      if (username == 'aaa@gmail.com' && password == 'aaa') {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      } else {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Login Failed'),
                              content: Text('Invalid username or password.'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    }
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.75),
                  ),
                ),
              ),
              SizedBox(
                height: 120,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('New User?'),
                  InkWell(
                    child: Text(
                      ' Create Account',
                      style: TextStyle(color: Colors.indigo),
                    ),
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegistrationPage()));
                    },
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
