import 'package:flutter/material.dart';
import 'package:ownedapp/screens/login.dart';

import 'onboardingpage.dart';

void main() => runApp(const RegisterApp());

class RegisterApp extends StatelessWidget {
  const RegisterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: 1000,
          margin: const EdgeInsets.only(top: 35, bottom: 35),
          padding: const EdgeInsets.only(top: 25, bottom: 20),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(20)),
          ),
          child: const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: RegisterPage(),
              resizeToAvoidBottomInset: false,
            ),
          ),
        ),
      ),
    );
  }
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  RegisterPageState createState() {
    return RegisterPageState();
  }
}

class RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextButton(
              style: TextButton.styleFrom(
                  textStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () {},
              child: Row(
                children: [
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OnboardingPage(),
                        ),
                      );
                    },
                    child: const Icon(Icons.arrow_back_outlined),
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 60.0),
                  child: Align(
                    child: Text(
                      'REGISTRATION',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 10, bottom: 10, right: 10, left: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      icon: Icon(Icons.person, color: Colors.blue),
                      hintText: 'Enter your name',
                      labelText: 'UserName',
                    ),
                  ),
                ),
                // Container(
                //   margin: const EdgeInsets.only(
                //       top: 15, bottom: 10, right: 10, left: 10),
                //   decoration: BoxDecoration(
                //       color: Colors.grey.shade100,
                //       borderRadius: BorderRadius.circular(20),
                //       border: Border.all(
                //           color: const Color.fromARGB(255, 239, 238, 238))),
                //   child: const TextField(
                //     obscureText: true,
                //     decoration: InputDecoration(
                //       icon: Icon(Icons.phone, color: Colors.blue),
                //       hintText: 'Enter a phone number',
                //       labelText: 'Phone',
                //     ),
                //   ),
                // ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 15, bottom: 10, right: 10, left: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: const Color.fromARGB(255, 239, 238, 238))),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      icon: Icon(Icons.email_outlined, color: Colors.blue),
                      hintText: 'Enter a Email Address',
                      labelText: 'Email Address',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 10, bottom: 10, right: 10, left: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: const Color.fromARGB(255, 239, 238, 238))),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      icon: Icon(
                        Icons.lock_outlined,
                        color: Colors.blue,
                      ),
                      hintText: 'Enter your Password',
                      labelText: 'Password',
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 65, left: 10, right: 10, bottom: 58),
                    child: SizedBox(
                      height: 50,
                      width: 680,
                      child: FloatingActionButton.extended(
                        elevation: 4,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginApp(),
                            ),
                          );
                        },
                        label: const Text('Register'),
                      ),
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    "Or Continue With",
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/icons/download (1).jpeg',
                      height: 40,
                    ),
                    Image.asset(
                      'assets/icons/download (1).png',
                      height: 25,
                    ),
                  ],
                ),
                Center(
                    child: Column(children: [
                  const Text('Already have An Account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginApp(),
                        ),
                      );
                    },
                    child: const Text('Login'),
                  )
                ])

                    // child: RichText(
                    //   text: const TextSpan(
                    //       text: 'Don\'t have an account?',
                    //       style: TextStyle(color: Colors.black, fontSize: 20),
                    //       children: <TextSpan>[
                    //         TextSpan(
                    //           text: ' Sign up',
                    //           style: TextStyle(
                    //               color: Colors.blueAccent, fontSize: 20),
                    //         )
                    //       ]),
                    // ),
                    ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
