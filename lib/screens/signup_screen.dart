// Copyright (C) 2022 Govind Panchawat
//
// This file is part of loginapp.
//
// loginapp is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// loginapp is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with loginapp.  If not, see <http://www.gnu.org/licenses/>.

import 'package:flutter/material.dart';
import 'package:loginapp/screens/login_screen.dart';
import 'package:lottie/lottie.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
            child: Column(
              children: <Widget>[
                LottieBuilder.asset(
                  "assets/animations/make-the-deal.json",
                  height: 200,
                  width: 200,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "Signup",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff7174d0),
                    ),
                  ),
                ),
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email Id",
                    icon: Icon(
                      Icons.email,
                      color: Color(0xff999dec),
                    ),
                    labelStyle: TextStyle(
                      color: Color(0xff999dec),
                    ),
                  ),
                ),
                const TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: "Username",
                    icon: Icon(
                      Icons.alternate_email_rounded,
                      color: Color(0xff999dec),
                    ),
                    labelStyle: TextStyle(
                      color: Color(0xff999dec),
                    ),
                  ),
                ),
                const TextField(
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Mobile Number",
                    icon: Icon(
                      Icons.phone,
                      color: Color(0xff999dec),
                    ),
                    labelStyle: TextStyle(
                      color: Color(0xff999dec),
                    ),
                  ),
                ),
                const TextField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    labelText: "Password",
                    icon: Icon(
                      Icons.lock,
                      color: Color(0xff999dec),
                    ),
                    labelStyle: TextStyle(
                      color: Color(0xff999dec),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.all(10),
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "By signing up you aggery to our\n",
                          style: TextStyle(
                            color: Color(0xFF5C5C5C),
                          ),
                        ),
                        TextSpan(
                          text: "Terms & Conditions",
                          style: TextStyle(
                            color: Color(0xFF461EF7),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                MaterialButton(
                  minWidth: MediaQuery.of(context).size.width,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: const Color(0xff8572e8),
                  textColor: Colors.white,
                  child: const Text(
                    "Signup",
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Color(0xFF6E50F5),
                      ),
                    ),
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
