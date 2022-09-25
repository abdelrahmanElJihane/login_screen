import 'package:flutter/material.dart';

import '../../shared/components/component.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key:_formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  defaultTextFromField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    controller: emailController,
                    prefix: Icons.email,
                    textType: TextInputType.emailAddress,
                    label: 'Email Adress',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  defaultTextFromField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    controller: passController,
                    prefix: Icons.lock,
                    textType: TextInputType.visiblePassword,
                    label: 'Password',
                    obscureText: obscureText,
                    suffix:
                        obscureText ? Icons.visibility : Icons.visibility_off,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  defaultButton(
                      text: 'login',
                      function: (String value) {
                        if (_formKey.currentState!.validate())  {
                          print(emailController.text);
                          print(passController.text);
                        }
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don\'t have an account ?'),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Register Now'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
