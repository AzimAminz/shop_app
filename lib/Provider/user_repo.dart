import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop_app/Model/user.dart';

Future<List<User>> getUserList() async{
  final String userjson = await rootBundle.loadString('lib/Constant/user.json');
  final userdata = jsonDecode(userjson)['users'] as List;

  final users  = userdata.map((e) => User.fromJson(e)).toList();
  return users;
}

Future<User> login(String username,String password) async{
  final userlist = await getUserList();
  User user  = userlist.firstWhere((element) => username == element.username 
  && password == element.password ,orElse: () => User.isNullUser());
  
if(!isNullUser(user)){
  saveUserData(user);
}
  return user;

}

bool isNullUser(User user){
  return (user.username == "" && user.password == "");
}
//flutter pub add shared_preferences
Future<void> saveUserData(User user) async{
  final prefs = await SharedPreferences.getInstance(); 

  final userjson = json.encode(user.toJson());
  prefs.setString('user', userjson);
}

Future<int> checkSavedUserData() async{
  final prefs = await SharedPreferences.getInstance();

//for first time user
  final user_in_pref =prefs.getString('user');
  if(user_in_pref == null){
    return 0;
  }

  final userjson = json.decode(user_in_pref);
  final user =  User.fromJson(userjson);

  if(isNullUser(user)){
     return 0;
  }
  else{
    return 1;
  }

}