import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/provider/signup_provider.dart';
import 'package:provider_project/widget.dart';

class LoginPages extends StatelessWidget {
  LoginPages({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<SignUpDataClass>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Pages'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text('Login', style: TextStyle(fontSize: 50)),
            CustomTextField(
              hintText: 'Email',
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              hintText: 'Password',
              controller: passwordController,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                authProvider.validator(
                    emailController.text, passwordController.text);
                authProvider.login(emailController.text.toString(),
                    passwordController.text.toString());
                emailController.clear();
                passwordController.clear();
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green),
                child: Center(
                  child: authProvider.loading
                      ? const CircularProgressIndicator(
                    color: Colors.white,
                  )
                      : const Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
