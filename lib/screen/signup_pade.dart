import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/provider/signup_provider.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({Key? key}) : super(key: key);

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {

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
            TextField(
              controller: emailController,
              decoration: const InputDecoration(hintText: "Email",icon: Icon(Icons.email_rounded,color: Colors.black)),
            ),
            const SizedBox(height: 20),
            TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(hintText: "Password",icon: Icon(Icons.password_rounded,color: Colors.black)),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: (){
                authProvider.login(emailController.text.toString(),passwordController.text.toString());
                emailController.clear();
                passwordController.clear();
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green),
                  child: Center(
                    child: authProvider.loading ? const CircularProgressIndicator(color: Colors.white,) : const Text('Login',style: TextStyle(color: Colors.white),),
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}