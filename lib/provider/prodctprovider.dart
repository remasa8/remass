import 'package:flutter/material.dart';

import '../model/productmodel.dart';
import '../serviecas/productservies.dart';

class productprovider extends ChangeNotifier
{
  productmodel? data;
  Future<void> fechdata()async
  {
    data= await productservice.getdata();
    notifyListeners();
  }

}