import 'package:flutter/cupertino.dart';

import '../model/loginsignupmodel.dart';
import '../serviecas/loginservice.dart';
import '../serviecas/signupservice.dart';


class loginprovider extends ChangeNotifier
{
  signuploginmodel? data;
  Future<void>login( email, password)async
  {

    data= await Loginservices. addData(email,password);

    notifyListeners();

  }

}