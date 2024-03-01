import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text('WELCOME',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ))),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHAzF0tJg0ut2Vl6L0bu6tP3-g-C1RTgcbXQ&usqp=CAU"),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Username',
              filled: true,
              fillColor: Colors.white,
          )
          ),
          SizedBox(height: 20,),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
              filled: true,
              fillColor: Colors.white,
          )
          ),
         SizedBox(height: 50,),
         TextButton(onPressed: (){}, child:  Text('login'),style: ButtonStyle(
             foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
             backgroundColor :MaterialStateProperty.all<Color>(Colors.red),

         ),
         ),
          SizedBox(height: 30,),
          Text("OR",
          style: TextStyle(
            color: Colors.green,
          ),
          ),
          SizedBox(height: 30,),
          TextButton(onPressed: (){}, child:  Text('login with FaceBook'),style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor :MaterialStateProperty.all<Color>(Colors.blueAccent),
          ),
          ),

        ],

      ),


    );
  }
}
