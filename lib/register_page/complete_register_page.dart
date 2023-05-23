import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:with_me/common/custom_widgets/custom_button.dart';
import 'package:with_me/common/custom_widgets/multi_select_drop_down_menu.dart';
import 'package:with_me/common/custom_widgets/text_form_field.dart';
import 'package:with_me/common/domain/use_cases/set_login_usecase.dart';
import 'package:with_me/filter/models/country.dart';
import 'package:with_me/filter/models/languages.dart';
//import 'package:with_me/filter/models/user_type.dart';
import 'package:with_me/filter/widgets/drop_down_button.dart';
import 'package:with_me/host_page.dart';

class CompleteRegisterPage extends StatefulWidget {
  CompleteRegisterPage({
    Key? key,
  }) : super(key: key);
  //final db = FirebaseFirestore.instance;
  @override
  State<CompleteRegisterPage> createState() => _CompleteRegisterPageState();
}

class _CompleteRegisterPageState extends State<CompleteRegisterPage> {
  final SetLogInUseCase _setLogInUseCase = SetLogInUseCase();
  final _formKey = GlobalKey<FormState>();

  final _firstNameContro = TextEditingController();
  final _lastNameContro = TextEditingController();
  final _ageContro = TextEditingController();
  final _experienceContro = TextEditingController();
  final _phoneNumberContro = TextEditingController();
  final _countryContro = TextEditingController();
  final _countryOfResidenceContro = TextEditingController();
  final _languagesContro = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff5661f1),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              // mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Complete Register',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 35,
                ),
                Text(
                  "First Name",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                AppTextFormFiled(
                  hintText: "Enter First Name",
                  labelText: "Enter First Name",
                  controller: _firstNameContro,

                  //  onChanged: (data) {
                  //    _firstNameContro = data;
                  //    setState(() {});
                  //  },
                ),
                Text(
                  "Last Name",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                AppTextFormFiled(
                  hintText: "Last name",
                  labelText: "Last Name",
                  controller: _lastNameContro,

                  // onChanged: (data) {
                  //   _lastName = data;
                  //   setState(() {});
                  // },
                ),
                const Text(
                  "Age",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                AppTextFormFiled(
                  hintText: "Age",
                  labelText: "Age",
                  textInputType: TextInputType.number,
                  controller: _ageContro,
                  // onChanged: (data) {
                  //   _age = data;
                  //   setState(() {});
                  // },
                ),

                AppTextFormFiled(
                  labelText: "Country",
                  hintText: "Country",
                  controller: _countryContro,
                ),

                // CustomDropdownButton(
                //   enumList: Country.values,
                //   value: _country,
                //   onChanged: (data) {
                //     _country = Country.values[data?.index ?? 0];
                //     setState(() {});
                //   },
                //   label: 'Nationality',
                // ),
                const SizedBox(),
                AppTextFormFiled(
                  labelText: "Country of Residence",
                  hintText: "Country of Residence",
                  controller: _countryOfResidenceContro,
                ),

                // CustomDropdownButton(
                //   enumList: Country.values,
                //   value: _countryOfResidence,
                //   onChanged: (data) {
                //     _countryOfResidence = Country.values[data?.index ?? 0];
                //     setState(() {});
                //   },
                //   label: 'Country Of Residence',
                // ),
                const Text(
                  "Speaking Languages",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                const SizedBox(
                  height: 10,
                ),
                AppTextFormFiled(
                  labelText: "Languages",
                  hintText: "Languages",
                  controller: _languagesContro,
                ),
                // MultiSelectDropDownMenu(
                //   onChanged: (data) {
                //     _languages = data;
                //     setState(() {});
                //   },
                //   options: Languages.values.map((e) => e.name).toList(),
                //   selectedValues: _languages,
                //   hint: 'Select Language',
                // ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(),
                const Text(
                  "Experience",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                AppTextFormFiled(
                  hintText: "Experience",
                  labelText: "Experience",
                  textInputType: TextInputType.number,
                  controller: _experienceContro,
                  // onChanged: (data) {
                  //   _experience = data;
                  //   setState(() {});
                  // },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Phone Number",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                AppTextFormFiled(
                  hintText: "Phone Number",
                  labelText: "Enter Phone Number",
                  textInputType: TextInputType.phone,
                  controller: _phoneNumberContro,
                  // onChanged: (data) {
                  //   _phoneNumber = data;
                  //   setState(() {});
                  // },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40.0),
                  child: CustomButton(
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
                      FirebaseFirestore.instance
                          .collection('users')
                          .add(dataTosave);
                    },
                    text: "Register",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//   void _registerFun() {
//     if (_formKey.currentState!.validate()) {
//       _setLogInUseCase(true);
//       Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(
//             builder: (context) => const HostPage(),
//           ));
//     }
//   }
// }
