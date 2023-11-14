import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        width: w * 0.70,
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Stack(
            children: [
              Column(
                children: [
                  BgImage(h: h),
                  SizedBox(
                    height: h * 0.10,
                  ),
                  Container(
                    height: h * 0.02,
                    width: double.infinity,
                    color: Colors.black,
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Zeeshan Raza ",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  Divider(
                    color: Colors.white54,
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  Container(
                    height: h * 0.40,
                    width: double.infinity,
                    color: Colors.black,
                    child: ListView(
                      children: const [
                        Tile(
                          text: "Help & Support",
                          icon1: Icons.help_outline,
                          icon2: Icons.arrow_forward_ios_sharp,
                        ),
                        Tile(
                          text: "setting",
                          icon1: Icons.settings,
                          icon2: Icons.arrow_forward_ios_sharp,
                        ),
                        Tile(
                          text: "FAQ",
                          icon1: Icons.question_answer_outlined,
                          icon2: Icons.arrow_forward_ios_sharp,
                        ),
                        Tile(
                          text: "Network Configration",
                          icon1: Icons.network_check_rounded,
                          icon2: Icons.arrow_forward_ios_sharp,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  SizedBox(
                    height: h * 0.05,
                    width: w * 0.55,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white38),
                        onPressed: () {},
                        child: const Text(
                          "Logout",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        )),
                  )
                ],
              ),
              Positioned(
                left: w * 0.18,
                top: h * 0.13,
                child: const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("assets/image/profile.jpg"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BgImage extends StatelessWidget {
  const BgImage({
    super.key,
    required this.h,
  });

  final double h;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: h * 0.2,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
        image: DecorationImage(
          image: AssetImage('assets/image/camera.JPG'),
          fit: BoxFit.cover,
        ),
        color: Color.fromARGB(255, 149, 176, 223),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  final String text;
  final IconData icon1;
  final IconData icon2;

  const Tile({
    Key? key,
    required this.text,
    required this.icon1,
    required this.icon2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 13),
      ),
      leading: Icon(
        icon1,
        size: 22,
        color: Colors.white,
      ),
      trailing: Icon(
        icon2,
        color: Colors.white,
        size: 18,
      ),
    );
  }
}
