import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/prodctprovider.dart';
import '../wedgit/customwedgit.dart';
import 'details.dart';
class prodctscreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return  Scaffold(
        appBar: AppBar(
          title: Text("product"),
          centerTitle: true,
        ),
        body: Consumer <productprovider>(
            builder: (context, value, child) {
              value.fechdata();
              return GridView.builder(
                gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),

                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => detiles(image: value.data?.products[index]['image'],
                          descraption:value.data?.products[index]['description'], name:value.data?.products[index]['name']),));
                    },
                    child: productwidget(name: value.data?.products[index]['name'], image: value.data?.products[index]['image']),

                  );

                },

                itemCount: value.data?.products.length,

              );
            }

        )

    );




  }
}
