import 'package:flutter/material.dart';

class createAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text('Create Account'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Enter your email",
                labelText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: "Enter your new password",
                labelText: "Password",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                )
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Success'),
                    actions: <Widget>[
                      new TextButton(
                        child: new Text('OK'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      )
                    ]
                  );
                }
              );
                },
              child: Text('Submit')
          )
        ],
      ),
    );
  }
}