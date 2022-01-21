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
import 'package:loginapp/screens/otp_screen.dart';
import 'package:lottie/lottie.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                LottieBuilder.asset("assets/animations/forgot-password.json"),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff7174d0),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Don't worry! It happens. Please enter the mobile number linked to your account",
                      style: TextStyle(
                        color: Color(0xFF5C5C5C),
                      ),
                    ),
                  ),
                ),
                const TextField(
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
                const SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  minWidth: MediaQuery.of(context).size.width,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OtpScreen(),
                      ),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: const Color(0xff8572e8),
                  textColor: Colors.white,
                  child: const Text(
                    "Get OTP",
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
