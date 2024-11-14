import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_project/screen/signin.dart';

import '../provider/signupprovider.dart';



class signupScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    TextEditingController userName = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController phone = TextEditingController();
    final formkey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(title: Text("Welcome To SignUp Page "),),
      body: Consumer<signupprovider>(builder: (context, value, child)
      {
        return  Form(
          key: formkey,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                TextFormField(

                  decoration: InputDecoration(

                      hintText: "UserName",
                      border: OutlineInputBorder(borderRadius:  BorderRadius.circular(20))
                  ),
                  controller: userName,
                  validator: (value)
                  {
                    if(value==null|| value.isEmpty)
                    {
                      return "Enter valid name";
                    }
                  },
                ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(borderRadius:  BorderRadius.circular(20))
                  ),
                  controller: email,
                  validator: (value)
                  {
                    if(value==null|| value.isEmpty)
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
                    if(value==null|| value.isEmpty)
                    {
                      return "Enter valid password";
                    }
                  },
                ),

                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Phone",
                      border: OutlineInputBorder(borderRadius:  BorderRadius.circular(20))
                  ),
                  controller: phone,
                  validator: (value)
                  {
                    if(value==null|| value.isEmpty)
                    {
                      return "Enter valid phone";
                    }
                  },
                ),

                SizedBox(height: 40,),
                OutlinedButton(
                  onPressed: () async{
                    if(formkey.currentState!.validate());
                    bool signup = await value.signup(userName.text, email.text, password.text,phone.text);
                    if(signup)
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginscreen ()));
                    }
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Error")));
                  },
                  child: Text("signup"),
                ),
                TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginscreen ()));
                  },
                  child: Text("Already have an Account"),
                )


              ],
            ),
          ),
        );
      },),
    );
  }
}
