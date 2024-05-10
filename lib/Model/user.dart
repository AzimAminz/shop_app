class User{

final String username;
final String password;

User({required this.username,required this.password});

static User isNullUser(){
  return User(username: '', password: '');
}

Map<String,dynamic> toJson(){
  return{
    "username" : username,
    "password" : password
  };
}

factory User.fromJson(Map<String,dynamic> json){
  return User(username:json['username']??" ", password:json['password']??'');
}


}