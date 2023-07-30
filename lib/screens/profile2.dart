import 'package:flutter/material.dart';

import 'contact.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Center(
              child: SingleChildScrollView(
                child: Column(children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ContactPage()));
                            },
                            child: const Icon(Icons.arrow_back_outlined),
                          )
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // Row(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   children: [
                          //     Icon(
                          //       Icons.sort,
                          //       size: 30,
                          //       textDirection: TextDirection.rtl,
                          //     ),
                          //   ],
                          // ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 35.0, right: 30, bottom: 20),
                            child: CircleAvatar(
                              maxRadius: 40,
                              backgroundColor:
                                  Color.fromARGB(255, 240, 174, 50),
                              // backgroundImage: AssetImage(
                              //   'assets/images/download.png',
                              // ),
                              // child: Image.asset(
                              //   'assets/images/download.png',
                              //   height: 7,
                              //   width: 60,
                              // ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Text(
                    'Hi, Ife',
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 30),
                  ),
                  const Text(
                    'welcome back!',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                  const Text(
                    'Find Your Creative Job!!!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.only(
                        top: 15, bottom: 10, right: 20, left: 20),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color.fromARGB(255, 239, 238, 238),
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xFFFFFFFF),
                        isDense: true,
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 2.0),

                        hintText: "Search...",
                        hintStyle: const TextStyle(
                          fontSize: 18,
                          color: Color(0xFFB3B1B1),
                        ), // TextStyle
                        suffixIcon: const Icon(
                          Icons.search,
                          size: 26,
                          color: Colors.black54,
                        ), // Icon

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                            width: 1.0,
                          ), // BorderSide
                        ), // OutlineInputBorder
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                            width: 1.0,
                            color: Colors.grey,
                          ), // BorderSide
                        ), // OutlineInputBorder
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                            width: 1.0,
                            color: Colors.grey,
                          ), // BorderSide
                        ), // OutlineInputBorder
                      ), // InputDecoration
                    ),
                  ), // TextField
                  const Text(
                    'Popular Jobs',
                  ),

                  const Column(
                    children: [
                      Column(children: [
                        Icon(
                          Icons.balcony_outlined,
                        ),
                        Text('Content Writer'),
                        Icon(
                          Icons.location_city_rounded,
                          color: Colors.blue,
                        ),
                        Text('58877. Jos Nigeria')
                      ])
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    height: 150,
                    margin: const EdgeInsets.all(20),
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Column(children: [
                      Icon(
                        Icons.balcony_outlined,
                      ),
                      Text('Designer'),
                      Icon(
                        Icons.location_city_rounded,
                        color: Colors.blue,
                      ),
                      Text('58877. Abuja Nigeria')
                    ]),
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.all(20),
                      width: 200,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.home),
                          Column(
                            children: [
                              Icon(
                                Icons.balcony,
                              ),
                              Text('Programmer'),
                              Icon(
                                Icons.location_city_rounded,
                                color: Colors.blue,
                              ),
                              Text('58877. Lagos Nigeria')
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.all(20),
                    width: 200,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Column(children: [
                      Icon(
                        Icons.balcony_outlined,
                      ),
                      Text('UI Designer'),
                      Icon(
                        Icons.location_city_rounded,
                        color: Colors.blue,
                      ),
                      Text('58877. Enugu Nigeria')
                    ]),
                  ),

                  newprofile('Redit'),
                  const SizedBox(
                    height: 8,
                  ),
                  newprofile('Swift'),
                  const SizedBox(
                    height: 8,
                  ),
                  newprofile('Google'),
                  const SizedBox(
                    height: 8,
                  ),
                  newprofile('Slack'),
                  const SizedBox(
                    height: 8,
                  ),
                  newprofile('Redit'),
                ]),
              ),
            ),
          ),
        ));
  }

  Container newprofile(String folderName) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 65,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListView(
        children: const [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Icon(
                    Icons.rocket_launch,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  Text('folderName'),
                  Text(
                    '\n\nContent Writer',
                    style: TextStyle(color: Color.fromARGB(255, 112, 111, 111)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
