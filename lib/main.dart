import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ovision',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(children: [
          TextField(
            decoration: InputDecoration(
             border: OutlineInputBorder(),
             icon: Icon(Icons.account_box_rounded),
             hintText: 'Digite seu nome'
            ),
          ),
          SizedBox(height: 20,),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              icon: Icon(Icons.phone_android_outlined),
              hintText: 'Digite seu telefone',   
            ),

          keyboardType: TextInputType.number,
          ),
          SizedBox(height: 20,),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              icon: Icon(Icons.email_rounded),
              hintText: 'Digite seu email',
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(
            child: Text('ENTRAR'),
            onPressed: (){},
          )
        ]),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
