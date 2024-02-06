import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'About Us',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 32, left: 16, right: 16, bottom: 50),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Welcome to Bull Stox – '
                        'Your Trusted Partner in Financial Forecasting! At Bull Stox, '
                        'we understand the dynamic and ever-evolving nature of financial markets. '
                        'Our mission is to empower investors with cutting-edge tools and accurate '
                        'predictions, enabling them to make informed decisions and navigate the '
                        'complexities of the stock market.',
                        textAlign: TextAlign.justify,
                      ),
                       SizedBox(
                         height: 10,
                       ),
                      Divider(
                        color: Colors.grey.shade400,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Our Expertise',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '          Backed by a team of seasoned financial analysts, data scientists,'
                        ' and machine learning experts, we have developed a sophisticated stock '
                        'prediction algorithm. Our algorithm leverages advanced statistical models, '
                        'artificial intelligence, and extensive market data to deliver reliable '
                        'predictions for a wide range of stocks.',
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Colors.grey.shade400,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Commitment to Accuracy',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Accuracy is at the core of our values. We continuously refine '
                        'and optimize our algorithms to ensure that our predictions align with '
                        'market trends and movements. Our commitment to accuracy is unwavering, '
                        'and we strive to provide users with the most reliable insights to support '
                        'their investment strategies.',
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Colors.grey.shade400,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'User-Friendly Platform',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '          We believe that accessing powerful financial tools should be '
                        'intuitive and user-friendly. Our platform is designed to be accessible '
                        'to both seasoned investors and those new to the stock market. We '
                        'prioritize simplicity without compromising on the depth of analysis, '
                        'making it easy for users to interpret predictions and make informed '
                        'decisions.',
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Colors.grey.shade400,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Privacy and Security',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '          We take the privacy and security of our users seriously. All '
                        'user data is handled with the utmost confidentiality, and our platform '
                        'employs industry-standard security measures to safeguard your '
                        'information. You can trust Bull Stox to prioritize '
                        'the security of your financial data.',
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Colors.grey.shade400,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Customer Support',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '          We value our users and are committed to providing exceptional '
                        'customer support. If you have any questions, concerns, or feedback, our '
                        'dedicated support team is here to assist you. Feel free to reach out to '
                        'us through our Contact Us page, and we will ensure a prompt and helpful '
                        'response.',
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(
                        color: Colors.grey.shade400,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Thank you for choosing Bull Stox as your'
                        ' financial companion. We look forward to helping you navigate the '
                        'exciting world of stock market investing!',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
