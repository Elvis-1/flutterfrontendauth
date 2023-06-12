import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterfrontendauth/widgets/text_field.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            // image
            Container(
                height: 200,
                width: 300,
                child: Image.asset(
                  "images/logolight.png",
                  fit: BoxFit.cover,
                )),
            // form
            TextFieldWidget(
              icon: Icons.email,
              hintText: "Email",
              controller: emailController,
            ),

            TextFieldWidget(
              obscureText: true,
              icon: Icons.password,
              hintText: "Password",
              controller: passwordController,
            ),

            TextFieldWidget(
              icon: Icons.person,
              hintText: "Name",
              controller: nameController,
            ),

            TextFieldWidget(
              icon: Icons.phone,
              hintText: "Phone",
              controller: phoneController,
            ),
            //sign up button
            Container(
              margin: EdgeInsets.only(top: 30),
              height: 50,
              width: 200,
              child: Center(
                  child: Text(
                'Sign Up',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // social login
            const Text("Signup using one of the following methods"),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    'images/facebook.png',
                    color: Colors.blue,
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    'images/google.png',
                    color: Colors.amber,
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
