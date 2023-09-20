import 'package:flutter/material.dart';
import 'package:renovision_app/app_utils.dart';
import 'package:renovision_app/screen/registration_screen.dart';
import 'package:renovision_app/widgets/input_field_widget.dart';
import 'package:renovision_app/widgets/primary_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimary,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: 20.0,
                      height: 10.0,
                      decoration: const BoxDecoration(
                        color: colorWhite,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 1.5,
                    ),
                    Container(
                      width: 20.0,
                      height: 2.0,
                      decoration: const BoxDecoration(
                        color: colorWhite,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10.0,
                ),
                const Text(
                  'RenoVision',
                  style: TextStyle(
                    color: colorWhite,
                    fontSize: 45.0,
                    fontFamily: fontFamily,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 150.0,
            ),
            const Text(
              'Welcome back!',
              style: TextStyle(
                color: colorWhite,
                fontFamily: fontFamily,
                fontSize: 23.0,
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            const Text(
              'Please enter your details below',
              style: TextStyle(
                color: colorWhite,
                fontSize: 14.0,
                fontFamily: fontFamily,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            InputField(
              controller: emailController,
              hintText: 'Enter your email',
              icon: Icons.email,
            ),
            const SizedBox(
              height: 25.0,
            ),
            InputField(
              controller: passwordController,
              hintText: 'Enter your password',
              icon: Icons.password,
            ),
            const SizedBox(
              height: 70.0,
            ),
            PrimaryButton(
              text: 'Login In',
              onPressed: () {
                if (isValidate()) {}
              },
            ),
            const SizedBox(
              height: 25.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account? ",
                  style: TextStyle(
                    color: colorWhite,
                    fontFamily: fontFamily,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegistrationScreen()));
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: colorWhite,
                      fontFamily: fontFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  bool isValidate() {
    if (emailController.text.isEmpty) {
      showScaffold(context, 'Please enter your email');
      return false;
    }
    if (passwordController.text.isEmpty) {
      showScaffold(context, 'Please enter your password');
      return false;
    }
    return true;
  }
}
