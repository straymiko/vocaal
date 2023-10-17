import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EditProfile extends StatefulWidget {
  @override
  State createState() => _State();
}

class _State extends State<EditProfile> {
  TextEditingController patientNameController = TextEditingController();
  TextEditingController patientNumberController = TextEditingController();
  TextEditingController doctorNameController = TextEditingController();
  TextEditingController doctorNumberController = TextEditingController();
  TextEditingController hospitalNameController = TextEditingController();
  TextEditingController hospitalNumberController = TextEditingController();
  TextEditingController caregiverNameController = TextEditingController();
  TextEditingController caregiverNumberController = TextEditingController();
  _retrieveValues() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      patientNameController.text = prefs.getString('patient name') ?? "";
      patientNumberController.text = prefs.getString('patient number') ?? "";
      doctorNameController.text = prefs.getString('doctor name') ?? "";
      doctorNumberController.text = prefs.getString('doctor number') ?? "";
      hospitalNameController.text = prefs.getString('hospital') ?? "";
      hospitalNumberController.text = prefs.getString('hospital number') ?? "";
      caregiverNameController.text = prefs.getString('caregiver name') ?? "";
      caregiverNumberController.text = prefs.getString('caregiver number') ?? "";
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
      appBar: AppBar(
        title: Text("Shared Preference"),
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
            padding: const EdgeInsets.all(5.0),
            child: TextField(
              controller: patientNameController,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: "Enter name",
                labelText: "Patient Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextField(
              controller: patientNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter contact number",
                labelText: "Patient Number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextField(
              controller: doctorNameController,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: "Enter name",
                labelText: "Doctor name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextField(
              controller: doctorNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter contact number",
                labelText: "Doctor Number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextField(
              controller: hospitalNameController,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: "Enter name",
                labelText: "Hospital name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextField(
              controller: hospitalNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter contact number",
                labelText: "Hospital Number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextField(
              controller: caregiverNameController,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: "Enter name",
                labelText: "Caregiver name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextField(
              controller: caregiverNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter contact number",
                labelText: "Caregiver Number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              //prefs.setString('name', nameController.text);
              prefs.setString('patient name', patientNameController.text);
              prefs.setString('patient number', patientNumberController.text);
              prefs.setString('doctor name', doctorNameController.text);
              prefs.setString('doctor number', doctorNumberController.text);
              prefs.setString('hospital', hospitalNameController.text);
              prefs.setString('hospital number', hospitalNumberController.text);
              prefs.setString('caregiver name', caregiverNameController.text);
              prefs.setString('caregiver number', caregiverNumberController.text);
            },
            child: Text("Save"),
          )
        ],
      ),
    );
  }
}