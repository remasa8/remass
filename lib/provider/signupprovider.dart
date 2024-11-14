import 'package:flutter/cupertino.dart';


import '../model/loginsignupmodel.dart';
import '../serviecas/signupservice.dart';

class signupprovider extends ChangeNotifier
{
  signuploginmodel? data;
  Future<bool>signup(name , email, password,phone)async
  {
    try
    {
      await SignUpService.addData (name, email, password, phone);
      notifyListeners();
      return true;
    }
    catch(e)
    {
      throw Exception("error");
    }

  }


}
