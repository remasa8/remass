import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class detiles extends StatelessWidget {
  String name;
  String image;
  String descraption;
  detiles({required this.image,required this.descraption,required this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("prodect detiles"),),
      body: Consumer(
        builder: (context, value, child) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Image.network(image),
                Text(name),
                Text(descraption),
              ],
            ),
          );
        },
      ),
    )  ;
  }
}
