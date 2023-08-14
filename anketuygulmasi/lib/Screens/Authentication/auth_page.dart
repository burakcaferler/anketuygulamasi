import 'package:anketuygulmasi/Providers/authentication_provider.dart';
import 'package:anketuygulmasi/Styles/color.dart';
import 'package:anketuygulmasi/Utils/message.dart';
import 'package:anketuygulmasi/Utils/router.dart';
import 'package:flutter/material.dart';

import '../main_activity_page.dart';
class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: (){
            AuthProvider().signInWithGoogle().then((value){
            if(value.user==null){
              error(context, message: "Please try again!");
            }
            else{
              nextPageOnly(context, const MainActivityPage());
            }
            });
          },
          child: Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.center,
            child: const Text("Log In"),
          ),
        ),
      ),
    );
  }
}
