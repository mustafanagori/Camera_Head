import 'package:flutter/material.dart';

class LoginField extends StatelessWidget {
  const LoginField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;

    return Container(
      height: h * 0.088,
      child: TextFormField(
        cursorColor: Colors.green.shade500,
        maxLength: 11,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Color(0xFFe7edeb),
          hintText: "Contact",
          prefixIcon: Icon(
            Icons.phone,
            color: Colors.grey[600],
            size: 20,
          ),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return "Please Enter the password";
          }
          if (value.length != 11 || !RegExp(r'^\d{11}$').hasMatch(value)) {
            return "Please enter valid  11-digit number";
          }
          return null; // Return null if the input is valid
        },
        onChanged: (value) {},
      ),
    );
  }
}
