import 'package:flutter/material.dart';


Future<String>getDatas()async {
 return new Future.delayed(const Duration(seconds: 3),()=>'simple');

}

class futu extends StatelessWidget {
  const futu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: futurebuilder(),
    );
  }
}

class futurebuilder extends StatefulWidget {
    @override
  State<futurebuilder> createState() => _futurebuilderState();
}

class _futurebuilderState extends State<futurebuilder> {
  @override
void initState(){
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Future Builder'),
      ),
      body: Center(
        child: FutureBuilder(
          future: getData() ,
          builder: (context ,snapshot){
            if(snapshot.data!= null){
              return Center(
                child: Text(snapshot.data.toString()),
              );
            }
            else{
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }

  getData() {

  }
}
