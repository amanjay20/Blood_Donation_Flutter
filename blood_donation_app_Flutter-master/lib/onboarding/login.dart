import 'package:flutter/material.dart';
import '../home_screens/HomePage.dart';
import 'Signup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      right: true,
      left: true,
      child: Scaffold(
        body: Container(
          color: Color(0xFFF5F5F5),
          child: Column(
            children: [
              SizedBox(height: 90),
              Text(
                "Welcome Back",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                  shadows: [
                    Shadow(
                      color: Colors.grey.shade400,
                      offset: Offset(-1, -2),
                    ),
                  ],
                ),
              ),
              Text(
                "Enter your credential for login",
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 2),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Username",
                    labelText: "Username",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(color: Color(0xFFE5E5E5)), // Light border color
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    fillColor: Color(0xFFE5E5E5), // Light background color
                    filled: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    hintText: "Password",
                    labelText: "Password",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(color: Color(0xFFE5E5E5)), // Light border color
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    fillColor: Color(0xFFE5E5E5), // Light background color
                    filled: true,
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 4),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return const HomeScreen();
                    }),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFC5141A),
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 118.0, vertical: 15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  elevation: 5,
                ),
                child: Text(
                  "Login Now",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              SizedBox(height: 60),
              TextButton(
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  //   return otpVerify();
                  // }));
                },
                child: Text(
                  "Forget password?",
                  style: TextStyle(
                    color: Color(0xFFC5141A),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              SizedBox(height: 160),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                        return SignUp();
                      }));
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFC5141A),
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
