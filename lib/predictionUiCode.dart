import 'package:flutter/material.dart';

class PredictionUiCode extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Live Prediction',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 16, right: 16),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.green.shade50,
                                      borderRadius: BorderRadius.circular(3),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          spreadRadius: 0.3,
                                          blurRadius: 0.3,
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: 99,
                                            width: 100,
                                            child: const Padding(
                                              padding: EdgeInsets.all(10.0),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.watch_later_rounded,
                                                        size: 15,
                                                        color: Colors.green,
                                                      ),
                                                      SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text(
                                                        'BUY',
                                                        style: TextStyle(
                                                          fontSize: 13,
                                                          fontWeight: FontWeight.w600,
                                                          letterSpacing: 1,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    '16-Jan-2024  09:32:15 AM',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      fontWeight: FontWeight.w600,
                                                      letterSpacing: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    'NIFTY 20,100 CE',
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w600,
                                                      letterSpacing: 0.5,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Ex. 18-Jan-2024',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 10),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 35,
                                                width: 125,
                                                decoration: BoxDecoration(
                                                    color: Colors.green,
                                                    borderRadius: BorderRadius.circular(30)),
                                                child: Center(
                                                  child: Text(
                                                    'BUY @13.75',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w600,
                                                      letterSpacing: 1,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 5,),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.red.shade50,
                                      borderRadius: BorderRadius.circular(3),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          spreadRadius: 0.3,
                                          blurRadius: 0.3,
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: 99,
                                            width: 100,
                                            child: const Padding(
                                              padding: EdgeInsets.all(10.0),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.watch_later_rounded,
                                                        size: 15,
                                                        color: Colors.red,
                                                      ),
                                                      SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text(
                                                        'SELL',
                                                        style: TextStyle(
                                                          fontSize: 13,
                                                          fontWeight: FontWeight.w600,
                                                          letterSpacing: 1,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    '16-Jan-2024  09:32:15 AM',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      fontWeight: FontWeight.w600,
                                                      letterSpacing: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    'NIFTY 20,100 CE',
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w600,
                                                      letterSpacing: 0.5,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Ex. 18-Jan-2024',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 10),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 35,
                                                width: 125,
                                                decoration: BoxDecoration(
                                                    color: Colors.green,
                                                    borderRadius: BorderRadius.circular(30)),
                                                child: Center(
                                                  child: Text(
                                                    'BUY @13.75',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w600,
                                                      letterSpacing: 1,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 5,),
                                              Container(
                                                height: 35,
                                                width: 125,
                                                decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius: BorderRadius.circular(30)),
                                                child: Center(
                                                  child: Text(
                                                    'EXIT @20.25',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w600,
                                                      letterSpacing: 1,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                ],
                              ),
                            );
                          }),
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