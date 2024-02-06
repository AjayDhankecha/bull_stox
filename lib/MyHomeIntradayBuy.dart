import 'package:bull_stox/predictionUiCode.dart';
import 'package:flutter/material.dart';

class MyHomeIntradayBuyPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Intraday Buy',
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
      body: PredictionUiCode(),

    );
  }

}