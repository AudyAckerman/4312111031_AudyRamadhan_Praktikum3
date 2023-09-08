import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Praktik_Icon(),
    );
  }
}

class Praktik_Icon extends StatelessWidget {
  const Praktik_Icon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Praktikum 3 Alert Dialog"),
      ),
      
      //(TEXT)
      // body:  Text('Ini Text', style: TextStyle(
      //   color: Colors.blue,
      //   backgroundColor: Colors.pink,
      //   fontSize: 20.0,
      //   fontStyle: FontStyle.italic,
      //   fontWeight: FontWeight.bold
      //   ),)

      //(ICON)
      // body: Container(
      //   padding: EdgeInsets.all(16.0),
      //   child: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: <Widget>[
      //   Column(
      //   children: <Widget>[
      //   Icon(Icons.access_alarm),
      //   Text('Alarm')
      //   ],
      //   ),
      //   Column(
      //   children: <Widget>[
      //   Icon(Icons.phone),
      //   Text('Phone')
      //   ],
      //   ),
      //   Column(
      //   children: <Widget>[
      //   Icon(Icons.book),
      //   Text('Book')
      //   ],
      //   ),
      //   ],
      //   ),
      // )

      //(CONTAINER)
      // body: Container(
      //   padding: EdgeInsets.all(32.0),
      //   margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
      //   decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(20.0),
      //   color: Colors.purple),
      //   // color: Colors.purple,
      //   child: Text('Haiii', style: TextStyle(color: Colors.white,
      //   fontSize: 20.0),)
      // )

      //(SIZEDBOX)
      // body: Column(
      //   children: <Widget>[
      //   Text("A", style: TextStyle(fontSize: 30.0),),
      //   SizedBox(height: 20.0,),
      //   Text("B", style: TextStyle(fontSize: 30.0),)
      //   ],
      // )

      //(BUTTON)
      // body: Column(
      //   children: <Widget>[
      //     ElevatedButton( // Mengganti RaisedButton
      //       style: ElevatedButton.styleFrom(
      //         primary: Colors.amber,
      //       ),
      //       onPressed: () {},
      //       child: Text("Elevated Button"),
      //     ),
      //     TextButton( // Mengganti FlatButton
      //       style: TextButton.styleFrom(
      //         backgroundColor: Colors.lightGreenAccent,
      //       ),
      //       onPressed: () {},
      //       child: Text("Text Button"),
      //     ),
      //     OutlinedButton( // Mengganti MaterialButton
      //       style: OutlinedButton.styleFrom(
      //         side: BorderSide(color: Colors.lime),
      //       ),
      //       onPressed: () {},
      //       child: Text("Outlined Button"),
      //     ),
      //   ],
      // ),

      //(TEXTFORMFIELD)
      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Form(
      //   child: Column(
      //   children: <Widget>[
      //   TextFormField(
      //   decoration: InputDecoration(hintText: "Username"),
      //   ),
      //   TextFormField(
      //   obscureText: true,
      //   decoration: InputDecoration(hintText: "Password"),
      //   ),
      //   ElevatedButton(
      //   child: Text("Login"),
      //   onPressed: () {},
      //   )
      //   ],
      //   ),
      //   ),
      // )

      body: Container(
        color: Colors.red,
        child: MaterialButton(
          textColor: Colors.white,
          onPressed: () {
            showDialog(
                context: context,
                builder: (_) {
                  return GiffyDialog.image(
                      Image.asset(
                        'images/gambargerak.gif',
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      title: const Text(
                        'Men Wearing Jakets',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w100),
                      ),
                      content: const Text(
                        'This is a men wearning jakets',
                        textAlign: TextAlign.center,
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'CANCEL'),
                          child: const Text(
                            'CANCEL',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text(
                            'OK',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ]);
                });
          },
          child: const Text("Alert Dialog"),
        ),
      ),
    );

  }
}