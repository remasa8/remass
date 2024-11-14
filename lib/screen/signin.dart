import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_project/screen/product.dart';

import '../provider/loginprovider.dart';



class Loginscreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    TextEditingController password = TextEditingController();
    TextEditingController email = TextEditingController();
    final formkey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(title: Text("Welcome To login Page "),),
      body: Consumer<loginprovider>
        (builder: (context, value, child)
      {
        return  Form(
          key: formkey,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                CircleAvatar(
                  child: Image.network("  "),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(borderRadius:  BorderRadius.circular(20))
                  ),
                  controller: email,
                  validator: (value)
                  {
                    if(value==null||value.isEmpty)
                    {
                      return "Enter valid email";
                    }
                  },
                ),

                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(borderRadius:  BorderRadius.circular(20))
                  ),
                  controller: password,
                  validator: (value)
                  {
                    if(value==null||value.isEmpty)
                    {
                      return "Enter valid passward";
                    }
                  },

                ),


                SizedBox(height: 40,),
                OutlinedButton(
                  onPressed: () async{
                    if(formkey.currentState!.validate());
                    await value.login(email.text, password.text);
                    if(value.data?.status==true)
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> prodctscreen()));
                    }
                    else
                    {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Error")));
                    }

                  },
                  child: Text("login"),
                ),

              ],
            ),
          ),
        );
      },),
    );
  }
}
