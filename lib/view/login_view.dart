import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/res/components/round_button.dart';
import 'package:provider_project/utils/routes/routes_name.dart';
import 'package:provider_project/utils/utils.dart';
import 'package:provider_project/view_model/auth_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  ValueNotifier<bool> obscurePassword = ValueNotifier<bool>(true);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    emailController.dispose();
    passwordController.dispose();

    emailFocusNode.dispose();
    passwordFocusNode.dispose();

    obscurePassword.dispose();

  }

  @override
  Widget build(BuildContext context) {
    final authViewMode = Provider.of<AuthViewModel>(context);
    final height  = MediaQuery.of(context).size.height * 1 ;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20,top: 100),
        child: Column(
          children: [
            const Text('Welcome back 🙏', style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold)),
            const SizedBox(height: 30,),
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              focusNode: emailFocusNode,
              decoration: const InputDecoration(
                hintText: 'Email',
                labelText: 'Email',
                prefixIcon: Icon(Icons.alternate_email)
              ),
              onFieldSubmitted: (val){
                Utils.fieldFocusChange(context, emailFocusNode, passwordFocusNode);
              },
            ),
            const SizedBox(height: 20),
            ValueListenableBuilder(
                valueListenable: obscurePassword,
                builder: (context , value, child){
                  return TextFormField(
                    controller: passwordController,
                    obscureText: obscurePassword.value,
                    focusNode: passwordFocusNode,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password',
                      prefixIcon: const Icon(Icons.lock_open_rounded),
                      suffixIcon: InkWell(
                          onTap: (){
                            obscurePassword.value = !obscurePassword.value ;
                          },
                          child: Icon(
                              obscurePassword.value ? Icons.visibility_off_outlined : Icons.visibility
                          )),
                    ),
                  );

                }
            ),
            SizedBox(height: height * .060,),
            RoundButton(
              title: 'Log In',
              loading: authViewMode.loading,
              onPress: (){
                if(emailController.text.isEmpty){
                  Utils.flushBarErrorMessage('Please enter email', context);
                }else if(passwordController.text.isEmpty){
                  Utils.flushBarErrorMessage('Please enter password', context);
                }else if(passwordController.text.length < 6){
                  Utils.flushBarErrorMessage('Please enter 6 digit password', context);
                }else {
                  Map data = {
                    'email' : emailController.text.toString(),
                    'password' : passwordController.text.toString(),
                  };
                  // 'email' : 'eve.holt@reqres.in',
                  // 'password' : 'cityslicka',
                  authViewMode.loginApi(data,context);
                  if (kDebugMode) {
                    print('api hit');
                  }
                }
              },
            ),
            SizedBox(height: height * .02,),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, RoutesName.signUp);
              },
                child: const Text("Don't have an account? Sign Up"))
          ],
        ),
      ),
    );
  }

}
