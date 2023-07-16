
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Background.jpg"),
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.low,
                  invertColors: false,
                  isAntiAlias: true),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 40, right: 8, top: 155),
                child: Text(
                  "Welcome\nBack",
                  style: GoogleFonts.prozaLibre(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 50)),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  width: double.infinity,
                  child: const TextField(
                    controller: null,
                    style: TextStyle(color: Color.fromRGBO(238, 225, 225, 1.0)),
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle:
                          TextStyle(color: Color.fromRGBO(234, 216, 216, 1.0)),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  width: double.infinity,
                  child: const TextField(
                    controller: null,
                    style: TextStyle(color: Color.fromRGBO(232, 222, 222, 1.0)),
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle:
                          TextStyle(color: Color.fromRGBO(232, 222, 222, 1.0)),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(60),
                    child: Text(
                      "Sign in",
                      style: GoogleFonts.prozaLibre(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 120),
                      child: ClipOval(
                        child: Material(
                          color: const Color.fromRGBO(78, 82, 91, 1),
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const SizedBox(
                              width: 56,
                              height: 56,
                              child: Icon(
                                Icons.navigate_next,
                                color: Colors.white,
                                opticalSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ))
                ],
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
