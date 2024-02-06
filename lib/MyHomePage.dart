import 'package:bull_stox/LoginPage.dart';
import 'package:bull_stox/MyHomeBankNiftyPredictionPage.dart';
import 'package:bull_stox/MyHomeShortTirmBuyPage.dart';
import 'package:bull_stox/MyHomeLongTirmBuyPage.dart';
import 'package:bull_stox/MyHomeNiftyPredictionPage.dart';
import 'package:bull_stox/MyHomeIntradayBuy.dart';
import 'package:bull_stox/MyHomeStockPredictionPage.dart';
import 'package:bull_stox/SplashPage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'AboutUsPage.dart';
import 'ContactUsPage.dart';
import 'PredictionPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Dashboard',
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
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            Container(
              height: 100,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text(
                        'A',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ajaykumar',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '+91 7874356887',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                ListTile(
                  title: Text('Home'),
                  leading: Icon(Icons.home),
                  trailing: Icon(Icons.navigate_next),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyHomePage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text('All Prediction'),
                  leading: Icon(Icons.batch_prediction),
                  trailing: Icon(Icons.navigate_next),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PredictionPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text('Last 30 Days Earning'),
                  leading: Icon(Icons.monetization_on),
                  trailing: Icon(Icons.navigate_next),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PredictionPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text('About Us'),
                  leading: Icon(Icons.group),
                  trailing: Icon(Icons.navigate_next),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutUsPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text('Contact Us'),
                  leading: Icon(Icons.mail),
                  trailing: Icon(Icons.navigate_next),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContactUsPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text('Log Out'),
                  leading: Icon(Icons.logout),
                  trailing: Icon(Icons.navigate_next),
                  onTap: ()async{
                    var sharedPref = await SharedPreferences.getInstance();
                    sharedPref.setBool(SplashPageState.KEYLOGIN, false);

                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginPage()));
                  },
                ),
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 1,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Latest',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          ),
                        ),
                        Text(
                          ' BUY',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          ),
                        ),
                        Text(
                          ' &',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          ),
                        ),
                        Text(
                          ' SELL',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          ),
                        ),
                        Text(
                          ' Updates',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Container(
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
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 160,
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(color: Colors.red, width: 1),
                              bottom: BorderSide(color: Colors.red, width: 1),
                              right: BorderSide(color: Colors.red, width: 1),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'OPTION PREDICTION',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        MyHomeNiftyPredictionPage()));
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/NiftyPrediction.png',
                                height: 35,
                                width: 35,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Nifty50 F&O',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  Text(
                                    'BUY',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 1,
                          color: Colors.grey,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        MyHomeBankNiftyPredictionPage()));
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/BankNifty Prediction.png',
                                height: 35,
                                width: 35,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'BankNifty F&O',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  Text(
                                    'BUY',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 1,
                          color: Colors.grey,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        MyHomeStockPredictionPage()));
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/Stock Prediction.png',
                                height: 35,
                                width: 35,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Equity F&O',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  Text(
                                    'BUY',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(
                      height: 10,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 160,
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(color: Colors.green, width: 1),
                              bottom: BorderSide(color: Colors.green, width: 1),
                              right: BorderSide(color: Colors.green, width: 1),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'STOCK PREDICTION',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        MyHomeIntradayBuyPage()));
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/Top10Nifty.png',
                                height: 35,
                                width: 35,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Intraday',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  Text(
                                    'BUY',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 1,
                          color: Colors.grey,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        MyHomeShortTirmBuyPage()));
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/Top10BankNifty.png',
                                height: 35,
                                width: 35,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Short Tirm',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  Text(
                                    'BUY',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 1,
                          color: Colors.grey,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        MyHomeLongTirmBuyPage()));
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/BigCapStock.png',
                                height: 35,
                                width: 35,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Long Tirm',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  Text(
                                    'BUY',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(
                      height: 10,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 160,
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(color: Colors.red, width: 1),
                              bottom: BorderSide(color: Colors.red, width: 1),
                              right: BorderSide(color: Colors.red, width: 1),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'OTHER UPDATES',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PredictionPage()));
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/Ipo.png',
                                height: 35,
                                width: 35,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Latest',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  Text(
                                    'IPOs',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 1,
                          color: Colors.grey,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PredictionPage()));
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/Idea.png',
                                height: 35,
                                width: 35,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Market',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  Text(
                                    'IDEAs',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 1,
                          color: Colors.grey,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PredictionPage()));
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/News.png',
                                height: 35,
                                width: 35,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Market',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  Text(
                                    'News',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        fixedColor: Colors.indigo,
        unselectedIconTheme: IconThemeData(color: Colors.black),
        unselectedItemColor: Colors.black,
        currentIndex: currentindex,
        onTap: (newindex) {
          currentindex = newindex;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.trending_up,
            ),
            label: 'Prediction',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
            ),
            label: 'Notification',
          ),
        ],
      ),
    );
  }
}
