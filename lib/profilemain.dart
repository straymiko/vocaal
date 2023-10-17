import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:vocaal/nav-drawer.dart';
import 'package:vocaal/editprofile.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp( home: Profile(),));
}

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController patientDetailsController = TextEditingController();
  TextEditingController doctorDetailsController = TextEditingController();
  TextEditingController hospitalController = TextEditingController();
  TextEditingController caregiverController = TextEditingController();
  _retrieveValues() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      patientDetailsController.text = prefs.getString('patient details') ?? "";
      doctorDetailsController.text = prefs.getString('doctor details') ?? "";
      hospitalController.text = prefs.getString('hospital') ?? "";
      caregiverController.text = prefs.getString('caregiver') ?? "";
    });
  }

  @override
  void initState() {
    super.initState();
    _retrieveValues();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text("Edit Profile"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          /*Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: nameController,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: "Enter name",
                labelText: "Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),*/
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: patientDetailsController,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: "Enter name and contact number",
                labelText: "Patient Details",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: doctorDetailsController,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: "Enter name and contact number",
                labelText: "Doctor Details",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: hospitalController,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: "Enter name and contact number",
                labelText: "Hospital",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: caregiverController,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: "Enter name and contact number",
                labelText: "Caregiver",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          RichText(
              text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: "Edit",
                        style: TextStyle(color: Colors.purple, fontSize: 25, fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()
                          ..onTap = ()
                          {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => EditProfile())
                            );
                          }
                    )
                  ]
              )
          ),
          ElevatedButton(
            onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.setString('patient details', patientDetailsController.text);
              prefs.setString('doctor details', doctorDetailsController.text);
              prefs.setString('hospital', hospitalController.text);
              prefs.setString('caregiver', caregiverController.text);
            },
            child: Text("Save"),
          )
        ],
      ),
    );
  }
}