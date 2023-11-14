import 'package:flutter/material.dart';

class DonthaveAccount extends StatelessWidget {
  const DonthaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account  ",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.grey[600],
          ),
        ),
        SizedBox(
          width: w * 0.04,
        ),
        GestureDetector(
          onTap: () {
            //   Get.to(() => ());
          },
          child: Text(
            "Sign Up ",
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 14,
              color: Colors.green.shade700,
            ),
          ),
        ),
      ],
    );
  }
}
