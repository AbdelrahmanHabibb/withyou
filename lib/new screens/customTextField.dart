import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  CustomField({this.controller, this.labeltext, this.onsubmitted});
  final String? labeltext;
  Function(String)? onsubmitted;
  TextEditingController? controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return 'feild is required';
          }
        },
        controller: controller,
        onFieldSubmitted: onsubmitted,
        decoration: InputDecoration(
            prefixIconConstraints:
                const BoxConstraints(maxWidth: 50, minWidth: 10),
            fillColor: Colors.white,
            filled: true,
            // suffix: _secureAye(),
            //suffixIcon: _secureAye(),
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(12)),
            labelStyle: const TextStyle(color: Colors.black),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(12)),
            disabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(12))),
        //maxLines: 1,
      ),
    );
  }
}
