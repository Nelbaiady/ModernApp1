import 'package:flutter/material.dart';

void main() {
  runApp(const StateyApp());
}

class StateyApp extends StatefulWidget{
  const StateyApp({Key? key}) : super(key: key);
  @override
  State<StateyApp> createState() => _LoginState();
}

class _LoginState extends State<StateyApp> {
  bool rememberme = false;
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body:
        Padding(padding: EdgeInsets.symmetric(horizontal: 70,vertical: 70,),
    child:
            Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Center( child:
      Text("Login",style: TextStyle(fontFamily: "Roboto" ,color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 80),),
      ),

      Column( crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      Text("Email:",textAlign: TextAlign.left , style: TextStyle(fontSize: 20,color: Colors.grey, fontWeight: FontWeight.bold),),
      TextField(decoration:
      InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(width: 0, style: BorderStyle.none,),
          ),
          filled: true,
          fillColor: Color(0xFFDCE3E5)),),
      ]),

        Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      Text("Password:",textAlign: TextAlign.left , style: TextStyle(fontSize: 20,color: Colors.grey, fontWeight: FontWeight.bold),),
      TextField(decoration:
      InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(width: 0, style: BorderStyle.none,),
          ),
          filled: true,
          fillColor: Color(0xFFDCE3E5)),),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
          Checkbox(value: rememberme,
            onChanged: (bool? value)
            {
              setState(() {
                rememberme = value!;
              });
            },
          ),
          Text("Remember me",style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
          ]),
          TextButton(onPressed: (){}, child: Text("Forgot Password?",style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),textAlign: TextAlign.right),)
        ]),
        ],
      ),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            minimumSize: Size(300, 80)
        ),
        onPressed: (){},
        child: Text("Login",style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),textAlign: TextAlign.right),),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Don't have an account?",textAlign: TextAlign.left , style: TextStyle(fontSize: 18,color: Colors.grey, fontWeight: FontWeight.bold),),
          TextButton(onPressed: (){}, child: Text("Sign up",style: TextStyle(fontSize: 18,color: Colors.blueAccent, fontWeight: FontWeight.bold),textAlign: TextAlign.right),),
        ],
      ),
      Column(children: [
      Text("By creating or logging into an account you are agreeing with our",textAlign: TextAlign.left , style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(onPressed: (){}, child: Text("Terms and Conditions",style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),textAlign: TextAlign.right),),
          Text("and",textAlign: TextAlign.left , style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
          TextButton(onPressed: (){}, child: Text("Privacy Statement",style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),textAlign: TextAlign.right),),
        ],
      ),
        ]),
]),),
      ),

    );
  }
}