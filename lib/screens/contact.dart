import 'package:flutter/material.dart';
import 'package:ownedapp/screens/about_page.dart';
import 'package:ownedapp/screens/profile2.dart';
import 'package:ownedapp/screens/search.dart';

void main() => runApp(const ContactPage());

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          body: ContactApp(),
          resizeToAvoidBottomInset: false,
        ),
      ),
    );
  }
}

class ContactApp extends StatefulWidget {
  const ContactApp({super.key});

  @override
  LoginPageState createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<ContactApp> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(children: [
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
                          builder: (context) => ProfilePage(),
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
                  padding: EdgeInsets.only(top: 40.0),
                  child: Align(
                    child: Text(
                      'Contact Information',
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
                Column(
                  children: [
                    const Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text('Full Name'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.all(15),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Full Name',
                                hintText: 'Enter Your Name',
                              ),
                            ),
                          ),
                          Column(children: [
                            const Align(
                              alignment: AlignmentDirectional.centerStart,
                              child: Text('Mobile No'),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(15),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Password',
                                  hintText: 'Enter Phone No',
                                ),
                              ),
                            ),
                            Column(children: [
                              const Align(
                                alignment: AlignmentDirectional.centerStart,
                                child: Text('Email'),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(15),
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Email',
                                    hintText: 'Enter Email Address',
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  const Align(
                                    alignment: AlignmentDirectional.centerStart,
                                    child: Text('Attach CV'),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 10, bottom: 1, right: 2, left: 10),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade100,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: TextFormField(
                                      controller: TextEditingController(),
                                      obscureText: true,
                                      decoration: const InputDecoration(
                                        icon: Icon(Icons.add_rounded,
                                            color: Colors.blue),
                                        hintText: 'Attach CV',
                                        labelText: 'CV',
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 65,
                                          left: 10,
                                          right: 10,
                                          bottom: 58),
                                      child: SizedBox(
                                        height: 50,
                                        width: 680,
                                        child: FloatingActionButton.extended(
                                          elevation: 4,
                                          onPressed: () {},
                                          label: const Text('Apply Now'),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ]),
                          ])
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ]),
        ));
  }
}
