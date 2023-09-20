// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cinema_food_project/screens/home_screen.dart';
import 'package:cinema_food_project/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/login_button.dart';
import '../components/login_credentials.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // variable declaration
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // cinema name + logo
              Icon(
                Icons.movie,
                size: MediaQuery.of(context).size.width * 0.25,
              ),
              Text(
                'FUN CINEMA',
                style: GoogleFonts.bebasNeue(fontSize: 40),
              ),
              SizedBox(height: 20),

              // Welcome Back
              Text(
                'Welcome back',
                style: GoogleFonts.bebasNeue(fontSize: 20),
              ),
              SizedBox(height: 50),

              // Email TextField
              loginCredentials(
                emailController: emailController,
                hintText: 'Email',
              ),
              SizedBox(height: 30),

              // Password TextField
              loginCredentials(
                emailController: passwordController,
                hintText: 'Password',
              ),
              SizedBox(height: 50),

              // Login with google
              LoginButton(
                buttonText: 'Continue with Google',
                buttonColor: Colors.white,
                buttonTextColor: Colors.black,
                onTap: () {},
              ),
              SizedBox(height: 30),

              // login with facebook
              LoginButton(
                buttonText: 'Continue with Facebook',
                buttonColor: Colors.blue,
                buttonTextColor: Colors.white,
                onTap: () {},
              ),
              SizedBox(height: 30),

              // login button
              LoginButton(
                buttonText: 'LOG IN',
                buttonColor: Colors.black,
                buttonTextColor: Colors.white,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
              ),
              SizedBox(height: 30),

              // not a user?
              Text(
                'Not a User?',
                style: GoogleFonts.abel(fontSize: 15),
              ),
              SizedBox(height: 30),

              // register now button
              LoginButton(
                buttonText: 'Register Now',
                buttonColor: Colors.black,
                buttonTextColor: Colors.white,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
