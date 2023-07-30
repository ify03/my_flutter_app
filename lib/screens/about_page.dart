import 'package:flutter/material.dart';

import 'contact.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
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
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Expanded(
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
                                  TextButton(
                                    style: TextButton.styleFrom(
                                        textStyle: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        OutlinedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    ContactPage(),
                                              ),
                                            );
                                          },
                                          child: const Icon(
                                              Icons.arrow_back_outlined),
                                        )
                                      ],
                                    ),
                                  );
                                },
                                child: const Icon(Icons.arrow_back_outlined),
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            const CircleAvatar(
                              maxRadius: 45,
                              backgroundImage: AssetImage(
                                'assets/images/download.png',
                              ),
                            ),
                            Text(
                              "Ifebuche Chukwu",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                            const Text('Mobile Developer'),
                            const SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 40,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStatePropertyAll(Colors.blue),
                                    ),
                                    onPressed: null,
                                    child: Text(
                                      "About",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                // FloatingActionButton.extended(
                                //   onPressed: () {},
                                //   heroTag: 'follow',
                                //   elevation: 0,
                                //   label: const Text("Follow"),
                                //   icon: const Icon(Icons.person_add_alt_1),
                                // ),
                                const SizedBox(width: 16.0),
                                Align(
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        top: 15,
                                        bottom: 10,
                                        right: 10,
                                        left: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade100,
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 239, 238, 238))),
                                    child: const ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Color.fromARGB(
                                                    255, 235, 229, 229)),
                                      ),
                                      onPressed: null,
                                      child: Text(
                                        "Portfolio",
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            const _ProfileInfoRow()
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ProfileInfoRow extends StatelessWidget {
  const _ProfileInfoRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: SizedBox(
        child: Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: 40,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.blue),
                      ),
                      onPressed: null,
                      child: Text(
                        "Share",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
