
import 'package:flutter/material.dart';

import 'package:shop_app/Utils/routes.dart';
import 'package:shop_app/auth/login_or_register.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key?key }): super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigate();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      body: Center(
        child: Icon(Icons.shop_outlined),
      ),
    );
  }

  void navigate(){
  Future.delayed(const Duration(seconds: 2),(){
    PageNavigator(ctx: context).nextPageOnly(page: const LoginOrRegister());
  });
}
}

