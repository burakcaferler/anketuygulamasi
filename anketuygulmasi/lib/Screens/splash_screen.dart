import 'package:anketuygulmasi/Screens/individual_poll.dart';
import 'package:anketuygulmasi/Screens/main_activity_page.dart';
import 'package:anketuygulmasi/Utils/dynamic_utils.dart';
import 'package:anketuygulmasi/Utils/router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';

import 'Authentication/auth_page.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  User? user= FirebaseAuth.instance.currentUser;

  void navigate(){
    Future.delayed(const Duration(seconds: 3), (){
      if(user==null){
        nextPageOnly(context, const AuthPage());
      }
      else{
        //nextPageOnly(context, const MainActivityPage());
        DynamicLinkProvider().initDynamicLink().then((value) {
          if(value==""){
            nextPageOnly(context, const MainActivityPage());
          }else{
            nextPage(context, IndividualPollsPage(id: value));
          }

        });
      }
    });
  }
  void initState(){

    super.initState();
    navigate();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: FlutterLogo(),
      ),
    );
  }
}
