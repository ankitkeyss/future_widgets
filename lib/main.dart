import 'package:flutter/material.dart';

void main()  {

  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'future widgets',
      theme: ThemeData(

        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('future widgets'),
        ),
        body: const MyHomePage(),
      ),
    );
  }
}
Future<List> task() async {
  List  tasks = ['High Schools','Intermediate'];
  return tasks;
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
      future: task(),
      builder: (context ,snapshot){
         if(snapshot.hasData){
           return ListTile(
             title: Text('${snapshot.data[0] }'),
           );
         }else{
           return const CircularProgressIndicator();
         }
      },
    );

  }
}



