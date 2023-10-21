import 'package:flutter/material.dart';
import 'package:vocaal/nav-drawer.dart';
import 'package:vocaal/wordBank.dart';
import 'package:vocaal/speechCommands3.dart';
import 'package:vocaal/speechCommands5.dart';

class speechCommands4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          title: Text('Speech Commands 4'),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(top: 50),
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
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => speechCommands3()),
                                                );
                                              },
                                              child: Text("Back to Previous Page")
                                          ),
                                          const SizedBox(width: 50),
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => speechCommands5()),
                                                );
                                              },
                                              child: Text("To next page")
                                          ),
                                          const SizedBox(width: 0),
                                        ])
                                      ]
                                  )
                              ),
                              Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                                  child: Center(
                                      child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => wordBank()),
                                            );
                                          },
                                          child: Text("To Word Bank")
                                      )
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
