import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/provider/signup_provider.dart';
import 'package:provider_project/utils/utils.dart';
import 'package:provider_project/widget.dart';

class LoginPages extends StatelessWidget {
  LoginPages({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<SignUpDataClass>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20,top: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Welcome back 🙏', style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold)),
            const SizedBox(height: 30,),
            CustomTextField(
              icons: Icons.email_outlined,
              hintText: 'Email',
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              icons: Icons.password,
              hintText: 'Password',
              controller: passwordController,
              keyboardType: TextInputType.text,
            ),
            const SizedBox(height: 30,),
            GestureDetector(
              onTap: () {
                if(emailController.text.isEmpty){
                  Utils.flushBarErrorMessage('Please enter email', context);
                }else if(passwordController.text.isEmpty){
                  Utils.flushBarErrorMessage('Please enter password', context);
                }else if(passwordController.text.length < 6){
                  Utils.flushBarErrorMessage('Please enter 6 digit password', context);
                }else{
                  Map data = {
                    'email' :emailController.text.toString(),
                    'password' :passwordController.text.toString(),
                  };
                }
                authProvider.validator(emailController.text, passwordController.text);
                authProvider.login(emailController.text.toString(), passwordController.text.toString());
              },
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color:  const Color(0xff53E88B),),
                child: Center(
                  child: authProvider.loading
                      ? const CircularProgressIndicator(color: Colors.white,)
                      : const Text('Log In',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
