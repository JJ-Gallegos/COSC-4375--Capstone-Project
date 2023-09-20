import 'package:flutter/material.dart';
import 'package:renovision_app/app_utils.dart';
import 'package:renovision_app/screen/login_screen.dart';
import 'package:renovision_app/widgets/primary_button.dart';
import '../widgets/input_field_widget.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: colorPrimary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  'RenoVision',
                  style: TextStyle(
                    color: colorWhite,
                    fontSize: 65.0,
                    fontFamily: fontFamily,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 2.0, // the spacing in between title and slogan
              ),
              const Center(
                child: Text(
                  'your vision, our measures',
                  style: TextStyle(
                    color: colorWhite,
                    fontSize: 20.0,
                    fontFamily: fontFamily,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              const Center(
                child: Text(
                  'Please enter your information',
                  style: TextStyle(
                    color: colorWhite,
                    fontSize: 18.0,
                    fontFamily: fontFamily,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(
                height: 35.0,
              ),
              InputField(
                controller: nameController,
                icon: Icons.person,
                hintText: "Enter your name",
              ),
              const SizedBox(
                height: 15.0,
              ),
              InputField(
                controller: emailController,
                icon: Icons.email,
                hintText: "Enter your email",
              ),
              // const SizedBox(
              //   height: 15.0,
              // ),
              // InputField(
              //   controller: phoneController,
              //   icon: Icons.phone_iphone,
              //   hintText: "Enter your phone number",
              // ),
              const SizedBox(
                height: 15.0,
              ),
              InputField(
                controller: passwordController,
                icon: Icons.password,
                hintText: "Enter your password",
                obscureText: true,
              ),
              const SizedBox(
                height: 55.0,
              ),
              PrimaryButton(
                text: 'Sign Up',
                onPressed: () {
                  if (isValidate()) {
                    print('Data validated');
                    // Navigate to home screen after sign up
                  }
                },
              ),
              const SizedBox(
                height: 25.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account? ',
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
                              builder: (context) => const LoginScreen()));
                    },
                    child: const Text(
                      'Log In',
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
      ),
    );
  }

  bool isValidate() {
    if (nameController.text.isEmpty) {
      showScaffold(context, 'Please enter your name');
      return false;
    }
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
