import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginpageinflutter/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passWordController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passWordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: mainBackground,
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                width: 500,
                height: 500,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    width: 2,
                    color: mainBackground,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                      alignment: Alignment.topCenter,
                      width: 370,
                      height: 150,
                      decoration: BoxDecoration(
                        color: mainBackground,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          width: 15,
                          color: mainBackground,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 22, 0, 0),
                            child: Text(
                              textAlign: TextAlign.center,
                              'Welcome !',
                              style: GoogleFonts.averiaGruesaLibre(
                                fontSize: 45,
                                color: textColor,
                              ),
                            ),
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            'Login to your Account',
                            style: GoogleFonts.inconsolata(
                              fontSize: 18,
                              color: textColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 15, 10, 20),
                      child: Column(
                        children: [
                          TextField(
                            //TextStyle(),
                            controller: _emailController,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.account_circle,
                                color: mainBackground,
                              ),
                              labelText: "Username",
                              hintText: "Enter you Email",
                              hintStyle: GoogleFonts.averiaGruesaLibre(
                                  fontSize: 18, color: mainBackground),
                              labelStyle: GoogleFonts.averiaGruesaLibre(
                                  fontSize: 20, color: mainBackground),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide:
                                    const BorderSide(color: mainBackground),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: TextField(
                              obscureText: true,
                              controller: _passWordController,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.lock,
                                  color: mainBackground,
                                ),
                                labelText: "Password",
                                hintText: "Enter you password",
                                hintStyle: GoogleFonts.averiaGruesaLibre(
                                    fontSize: 18, color: mainBackground),
                                labelStyle: GoogleFonts.averiaGruesaLibre(
                                    fontSize: 25, color: mainBackground),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide:
                                      const BorderSide(color: mainBackground),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 90,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: secondaryColor,
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      width: 15,
                                      color: secondaryColor,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      TextButton(
                                        onPressed: null,
                                        child: Text(
                                          'Login',
                                          style: GoogleFonts.averiaGruesaLibre(
                                              fontSize: 25,
                                              color: mainBackground),
                                        ),
                                      ),
                                      const Icon(
                                        Icons.forward,
                                        size: 24.0,
                                        color: mainBackground,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: null,
                                child: Text(
                                  'SignUp',
                                  style: GoogleFonts.averiaGruesaLibre(
                                    fontSize: 20,
                                    color: secondColor,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: null,
                                child: Text(
                                  'Forgot PassWord ?',
                                  style: GoogleFonts.averiaGruesaLibre(
                                    fontSize: 20,
                                    color: secondColor,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
