import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Contact Us',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              fontSize: 19,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0.0),
            child: Container(
              color: Colors.grey.shade300,
              height: 2.0,
            ),
          ),
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'You can get in touch with us through below platforms. '
                  'Our team will reach out to you as soon as it would be possible',
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 325,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 0.1,
                        blurRadius: 0.25,
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 15, left: 20, right: 20, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Customer Support',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            child: CircleAvatar(
                              child: Icon(
                                Icons.call,
                                size: 20,
                              ),
                              backgroundColor: Colors.grey.shade300,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Contact Number',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '+91 90995 99621',
                                style:
                                    TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            child: CircleAvatar(
                              child: Icon(
                                Icons.mail,
                                size: 20,
                              ),
                              backgroundColor: Colors.grey.shade300,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Email Address',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Support@bullstox.com',
                                style:
                                TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: 325,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 0.1,
                        blurRadius: 0.25,
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 15, left: 20, right: 20, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Social Media',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            child: CircleAvatar(
                              child: Icon(
                                Icons.call,
                                size: 20,
                              ),
                              backgroundColor: Colors.grey.shade300,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'WhatsApp',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '+91 90995 99621',
                                style:
                                TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            child: CircleAvatar(
                              child: Icon(
                                Icons.mail,
                                size: 20,
                              ),
                              backgroundColor: Colors.grey.shade300,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Telegram',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Support@bullstox.com',
                                style:
                                TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            child: CircleAvatar(
                              child: Icon(
                                Icons.mail,
                                size: 20,
                              ),
                              backgroundColor: Colors.grey.shade300,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Instagram',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Support@bullstox.com',
                                style:
                                TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            child: CircleAvatar(
                              child: Icon(
                                Icons.mail,
                                size: 20,
                              ),
                              backgroundColor: Colors.grey.shade300,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Facebook',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Support@bullstox.com',
                                style:
                                TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        );
  }
}
