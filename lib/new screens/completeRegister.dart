import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'customTextField.dart';

class CompleteRegister extends StatefulWidget {
  CompleteRegister({super.key});

  @override
  State<CompleteRegister> createState() => _CompleteRegisterState();
}

class _CompleteRegisterState extends State<CompleteRegister> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameContro = TextEditingController();
  final _lastNameContro = TextEditingController();
  final _ageContro = TextEditingController();
  final _experienceContro = TextEditingController();
  final _phoneNumberContro = TextEditingController();
  final _countryContro = TextEditingController();
  final _countryOfResidenceContro = TextEditingController();
  final _languagesContro = TextEditingController();
  CollectionReference userRef = FirebaseFirestore.instance.collection("users");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff5661f1),
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            Center(
              child: const Text(
                'Complete Register',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "First Name",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            CustomField(
              controller: _firstNameContro,
              // onsubmitted: (data) => firstname = data,
            ),
            SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "last Name",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            CustomField(
              controller: _lastNameContro,
              // onsubmitted: (data) => lastname = data,
            ),
            SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Age",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            CustomField(
              controller: _ageContro,
              // onsubmitted: (data) => age = data as int,
            ),
            SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Nationality",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            CustomField(
              controller: _countryContro,
              // onsubmitted: (data) => country = data,
            ),
            SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Country Of Residence",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            CustomField(
              controller: _countryOfResidenceContro,
              // onsubmitted: (data) => countryOfResidence = data,
            ),
            SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Speaking Languages",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            CustomField(
              controller: _languagesContro,
              // onsubmitted: (data) => language = data,
            ),
            SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Experience",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            CustomField(
              controller: _experienceContro,
              // onsubmitted: (data) => experiance = data,
            ),
            SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Phone Number",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            CustomField(
              controller: _phoneNumberContro,
              // onsubmitted: (data) => phoneNum = data as int,
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: MaterialButton(
                minWidth: double.infinity,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  "Register",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                color: Colors.white,
                padding: EdgeInsets.all(15),
                onPressed: () {
                  Map<String, String> dataTosave = {
                    'firstname': _firstNameContro.text,
                    "lastname": _lastNameContro.text,
                    'age': _ageContro.text,
                    "experience": _experienceContro.text,
                    'phoneNumber': _phoneNumberContro.text,
                    'country': _countryContro.text,
                    'countryOfResidence': _countryOfResidenceContro.text,
                    'languages': _languagesContro.text,
                  };

                  if (_formKey.currentState!.validate()) {
                    userRef.add(dataTosave);
                    Navigator.of(context).pushNamed('HostPage');
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
