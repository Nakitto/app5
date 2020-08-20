import 'package:app5/screens/authenticate/authenticate.dart';
import 'package:app5/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app5/models/user.dart';

  class Wrapper extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
       final user = Provider.of<User>(context);
       
       
      //return either home or authentication widget
      if (user == null){
        return Authenticate();
      }
      else{
        return Home();
      }
      
      
        
      
    }
  }