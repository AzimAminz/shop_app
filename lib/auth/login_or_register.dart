import 'package:flutter/material.dart';
import 'package:shop_app/Screens/login.dart';
import 'package:shop_app/Screens/register.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool showLoginPage = true;

  void tooglePage(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return LoginPage(onTap: tooglePage);
    }else{
      return RegisterPage(onTap: tooglePage);
    }
  }
}