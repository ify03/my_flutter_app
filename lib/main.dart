import 'package:flutter/material.dart';
import 'package:ownedapp/screens/onboardingpage.dart';
import 'package:ownedapp/screens/profile2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: OnboardingPage(),
        resizeToAvoidBottomInset: false,
      ),
    );
    // MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: Scaffold(
    //       body: Center(
    //         child: Column(
    //           children: <Widget>[
    //             Image.asset(
    //               'assets/images/download.jpeg',
    //               height: 300,
    //               width: 1000,
    //             ),
    //             const Text(
    //               'Show Case Your Best Projects',
    //               textAlign: TextAlign.center,
    //               style: TextStyle(
    //                 fontSize: 25.0,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //             const SizedBox(
    //               height: 20,
    //             ),
    //             const Text(
    //               'More Than Just A Job. We Offer An Opportunity To Grow...',
    //               textAlign: TextAlign.center,
    //               style: TextStyle(fontSize: 15.0, color: Colors.grey),
    //             )
    //           ],
    //         ),
    //       ),
    //     ));
  }
}
