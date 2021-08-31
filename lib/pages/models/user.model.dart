import 'package:flutter/material.dart';

class User {
  String user;
  String password;
  String id;

  User({@required this.user, @required this.password, @required this.id});

  static User fromDB(String dbuser) {
    return new User(
        user: dbuser.split(':')[0],
        password: dbuser.split(':')[1],
        id: dbuser.split(':')[2]);
  }
}
