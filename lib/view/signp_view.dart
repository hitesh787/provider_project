import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/res/components/round_button.dart';
import 'package:provider_project/utils/routes/routes_name.dart';
import 'package:provider_project/utils/utils.dart';
import 'package:provider_project/view_model/auth_view_model.dart';


class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {

  ValueNotifier<bool> _obsecurePassword = ValueNotifier<bool>(true);

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _emailController.dispose();
    _passwordController.dispose();

    emailFocusNode.dispose();
    passwordFocusNode.dispose();

    _obsecurePassword.dispose();

  }

  @override
  Widget build(BuildContext context) {
    final authViewMode = Provider.of<AuthViewModel>(context);

    final height  = MediaQuery.of(context).size.height * 1 ;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20,top: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Create Account 🙏', style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold)),
              const SizedBox(height: 30,),
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                focusNode: emailFocusNode,
                decoration: const InputDecoration(
                    hintText: 'Email',
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.alternate_email)
                ),
                onFieldSubmitted: (valu){
                  Utils.fieldFocusChange(context, emailFocusNode, passwordFocusNode);
                },
              ),
              ValueListenableBuilder(
                  valueListenable: _obsecurePassword,
                  builder: (context , value, child){
                    return TextFormField(
                      controller: _passwordController,
                      obscureText: _obsecurePassword.value,
                      focusNode: passwordFocusNode,

                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        hintText: 'Password',
                        labelText: 'Password',
                        prefixIcon: const Icon(Icons.lock_open_rounded),
                        suffixIcon: InkWell(
                            onTap: (){
                              _obsecurePassword.value = !_obsecurePassword.value ;
                            },
                            child: Icon(
                                _obsecurePassword.value ?  Icons.visibility_off_outlined :
                                Icons.visibility
                            )),
                      ),
                    );

                  }
              ),
              SizedBox(height: height * .085,),
              RoundButton(
                title: 'Sign Up',
                loading: authViewMode.signUpLoading,
                onPress: (){
                  if(_emailController.text.isEmpty){

                    Utils.flushBarErrorMessage('Please enter email', context);
                  }else if(_passwordController.text.isEmpty){
                    Utils.flushBarErrorMessage('Please enter password', context);

                  }else if(_passwordController.text.length < 6){
                    Utils.flushBarErrorMessage('Please enter 6 digit password', context);

                  }else {
                    Map data = {
                      'email' : _emailController.text.toString(),
                      'password' : _passwordController.text.toString(),
                    };

                    authViewMode.signUpApi(data , context);
                    print('api hit');
                  }
                },
              ),
              SizedBox(height: height * .02,),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, RoutesName.login);
                },
                  child: const Text("Already have an account? Login"))

            ],
          ),
        ),
      ),
    );
  }
}
