import 'package:flutter/material.dart';

class productwidget extends StatelessWidget {
  String image;
  String name;
  productwidget({required this.name,required this.image });
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor: Colors.black,
      child: Column(
        children: [
          Image.network(image,width: 35,),
          SizedBox(height: 20,),
          Text(name),
        ],
      ),
    );
  }
}
