import 'package:flutter/material.dart';

import 'contact.dart';

void main() => runApp(const SearchPage());

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

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
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              // body: SearchApp(),
              resizeToAvoidBottomInset: false,
              // TextField
              body: Center(
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
                                    builder: (context) => const ContactPage(),
                                  ),
                                );
                              },
                              child: const Icon(Icons.arrow_back_outlined),
                            )
                          ],
                        ),
                      ),
                      const Text(
                        'Search',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
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
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            suffixIcon: const Icon(
                              Icons.search,
                              size: 26,
                              color: Colors.black54,
                            ),
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
                            // Icon

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
                      const Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Text(
                          '35 Job Oppurtunities Found',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 40,
                            child: ElevatedButton(
                              style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.white),
                              ),
                              onPressed: () {},
                              child: const Text(
                                "Most Popular",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.blue),
                              ),
                              onPressed: null,
                              child: Text(
                                "Most Recent",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }
}
