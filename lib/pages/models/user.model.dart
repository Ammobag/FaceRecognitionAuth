import 'package:flutter/material.dart';

class User {
  String user;
  String password;
  String id;
  String department;
  String passingYear;

  User(
      {@required this.user,
      @required this.password,
      @required this.id,
      @required this.department,
      @required this.passingYear});

  static User fromDB(String dbuser) {
    return new User(
        user: dbuser.split(':')[0],
        password: dbuser.split(':')[1],
        id: dbuser.split(':')[2],
        department: dbuser.split(':')[3],
        passingYear: dbuser.split(':')[4]);
  }
}
