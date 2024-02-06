import 'package:bull_stox/LoginPage.dart';
import 'package:bull_stox/MyHomePage.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  bool _isObscured = true;

  String _name = '';
  String _email = '';
  String _mobileNumber = '';
  String _city = '';
  String _state = '';

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
                'Create Account',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                      hintText: 'Enter Your Name',
                      prefixIcon: Icon(Icons.person),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    String pattern = r'^[a-zA-Z ]+$';
                    RegExp regExp = RegExp(pattern);

                    if (!regExp.hasMatch(value)) {
                      return 'Please enter only alphabetical [a-z] characters';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name = value!;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      hintText: 'Enter Your Email Address',
                      prefixIcon: Icon(Icons.mail),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email address';
                    }

                    // Regular expression for a valid email address
                    String pattern = r'^[a-zA-Z0-9]+@gmail\.com$';
                    RegExp regExp = RegExp(pattern);

                    if (!regExp.hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }

                    return null;
                  },
                  onSaved: (value) {
                    _email = value!;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Mobile Number',
                      hintText: 'Enter Your Mobile Number',
                    prefixIcon: Icon(Icons.phone),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your mobile number';
                    }

                    // Regular expression for a valid mobile number (10 digits)
                    String pattern = r'^[0-9]{10}$';
                    RegExp regExp = RegExp(pattern);

                    if (!regExp.hasMatch(value)) {
                      return 'Please enter Valid mobile number';
                    }

                    return null;
                  },
                  onSaved: (value) {
                    _mobileNumber = value!;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'City',
                      hintText: 'Enter Your City Name',
                      prefixIcon: Icon(Icons.location_city),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your city';
                    }
                    String pattern = r'^[a-zA-Z ]+$';
                    RegExp regExp = RegExp(pattern);

                    if (!regExp.hasMatch(value)) {
                      return 'Please enter valid city name';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _city = value!;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'State',
                      hintText: 'Enter Your State Name',
                    prefixIcon: Icon(Icons.location_on),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your state';
                    }
                    String pattern = r'^[a-zA-Z ]+$';
                    RegExp regExp = RegExp(pattern);

                    if (!regExp.hasMatch(value)) {
                      return 'Please enter valid state name';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _state = value!;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  controller: _passwordController,
                    obscureText: _isObscured,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Create Password',
                    prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            _isObscured = !_isObscured;
                          });
                        },
                        icon: Icon(_isObscured ? Icons.visibility : Icons.visibility_off),)
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }

                    // Regular expression for a strong password
                    String pattern =
                        r'^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*-_])[A-Za-z0-9!@#\$%\^&\*-_]+$';
                    RegExp regExp = RegExp(pattern);

                    if (!regExp.hasMatch(value)) {
                      return 'Please enter a strong password [Ex - Abc@123]';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  controller: _confirmPasswordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Confirm Password',
                      hintText: 'Re-Enter Password',
                      prefixIcon: Icon(Icons.lock_open),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please re-enter your password';
                    }
                    if (_passwordController.text !=
                        _confirmPasswordController.text) {
                      return 'Password not Match';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 20,
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
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Registration Success'),
                            content: Text('Login Now'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage()));
                                },
                                child: Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.75),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have Account?'),
                  InkWell(
                    child: Text(
                      ' Sign In',
                      style: TextStyle(
                        color: Colors.indigo,
                      ),
                    ),
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginPage()));
                    },
                  ),
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

// void _submitForm() {
//   if (_formKey.currentState!.validate()) {
//     _formKey.currentState!.save();
//
//     print('Username: $_name');
//     print('Email: $_email');
//     print('Mobile Number: $_mobileNumber');
//     print('City: $_city');
//     print('State: $_');
//   }
// }
}
