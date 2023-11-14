import 'package:camera/component/otherWidget/simple_Text.dart';
import 'package:flutter/material.dart';

class ForgetPasswordText extends StatelessWidget {
  const ForgetPasswordText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: TextButton(
          onPressed: () {
            //    Get.to(ForgetPassword());
          },
          child: SimpleText(
            text: "forget password",
            size: 12,
            fontWeight: FontWeight.normal,
            textColor: Colors.green.shade500,
          ),
        ));
  }
}
