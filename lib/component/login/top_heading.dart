import 'package:flutter/material.dart';

class LoginTopHeading extends StatelessWidget {
  const LoginTopHeading({
    Key? key, // Fix the super.key to Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // login and icon
        Row(
          children: [
            FittedBox(
              fit: BoxFit.contain,
              child: Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              width: w * 0.04,
            ),
            Icon(
              Icons.podcasts_rounded,
              size: 20,
              color: Colors.white,
            ),
          ],
        ),
        SizedBox(
          height: h * 0.005,
        ),
        // sub text
        FittedBox(
          fit: BoxFit.contain,
          child: Text(
            "Use your contact & password to login",
            style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.normal),
          ),
        ),
      ],
    );
  }
}
