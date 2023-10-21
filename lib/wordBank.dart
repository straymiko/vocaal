import 'package:flutter/material.dart';
import 'package:vocaal/nav-drawer.dart';

class wordBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Word Bank'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(children: [
                              RichText(
                                  text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: "<-----",
                                            style: TextStyle(color: Colors.purple, fontSize: 25, fontWeight: FontWeight.bold)
                                        )
                                      ]
                                  )
                              ),
                              const SizedBox(width: 150),
                              RichText(
                                  text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: "----->",
                                            style: TextStyle(color: Colors.purple, fontSize: 25, fontWeight: FontWeight.bold)
                                        )
                                      ]
                                  )
                              ),
                              const SizedBox(width: 0),
                            ])
                          ]
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(children: [
                          RichText(
                              text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "Word 1",
                                        style: TextStyle(color: Colors.purple, fontSize: 25, fontWeight: FontWeight.bold, backgroundColor: Colors.blue)
                                    )
                                  ]
                              )
                          ),
                          const SizedBox(width: 150),
                          RichText(
                              text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "Word 2",
                                        style: TextStyle(color: Colors.purple, fontSize: 25, fontWeight: FontWeight.bold, backgroundColor: Colors.blue)
                                    )
                                  ]
                              )
                          ),
                          const SizedBox(width: 0),
                        ])
                      ]
                    )
                  ),
                  Padding(
                      padding: const EdgeInsets.only(bottom: 100),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(children: [
                              RichText(
                                  text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: "Word 3",
                                            style: TextStyle(color: Colors.purple, fontSize: 25, fontWeight: FontWeight.bold, backgroundColor: Colors.blue)
                                        )
                                      ]
                                  )
                              ),
                              const SizedBox(width: 150),
                              RichText(
                                  text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: "Word 4",
                                            style: TextStyle(color: Colors.purple, fontSize: 25, fontWeight: FontWeight.bold, backgroundColor: Colors.blue)
                                        )
                                      ]
                                  )
                              ),
                              const SizedBox(width: 0),
                            ])
                          ]
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.only(bottom: 100),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(children: [
                              RichText(
                                  text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: "Word 5",
                                            style: TextStyle(color: Colors.purple, fontSize: 25, fontWeight: FontWeight.bold, backgroundColor: Colors.blue)
                                        )
                                      ]
                                  )
                              ),
                              const SizedBox(width: 150),
                              RichText(
                                  text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: "Word 6",
                                            style: TextStyle(color: Colors.purple, fontSize: 25, fontWeight: FontWeight.bold, backgroundColor: Colors.blue)
                                        )
                                      ]
                                  )
                              ),
                              const SizedBox(width: 0),
                            ])
                          ]
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.only(bottom: 100),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(children: [
                              RichText(
                                  text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: "Word 7",
                                            style: TextStyle(color: Colors.purple, fontSize: 25, fontWeight: FontWeight.bold, backgroundColor: Colors.blue)
                                        )
                                      ]
                                  )
                              ),
                              const SizedBox(width: 150),
                              RichText(
                                  text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: "Word 8",
                                            style: TextStyle(color: Colors.purple, fontSize: 25, fontWeight: FontWeight.bold, backgroundColor: Colors.blue)
                                        )
                                      ]
                                  )
                              ),
                              const SizedBox(width: 0),
                            ])
                          ]
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.only(bottom: 100),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(children: [
                              RichText(
                                  text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: "Word 9",
                                            style: TextStyle(color: Colors.purple, fontSize: 25, fontWeight: FontWeight.bold, backgroundColor: Colors.blue)
                                        )
                                      ]
                                  )
                              ),
                              const SizedBox(width: 150),
                              RichText(
                                  text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: "Word 10",
                                            style: TextStyle(color: Colors.purple, fontSize: 25, fontWeight: FontWeight.bold, backgroundColor: Colors.blue)
                                        )
                                      ]
                                  )
                              ),
                              const SizedBox(width: 0),
                            ])
                          ]
                      )
                  )
                ]
              )
            )
          )
        )
      )
    );
  }
}
