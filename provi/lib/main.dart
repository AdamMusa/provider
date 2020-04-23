import 'package:flutter/material.dart';
import 'package:provi/prov.dart';
import 'package:provi/provider_model.dart';
import 'package:provider/provider.dart';

void main(){
  Provider.debugCheckInvalidValueType =  null;
  runApp(
  MaterialApp(
      home: MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>Counter()),
        ChangeNotifierProvider(create: (_)=>Dec()),
        //Provider<Counter>(create: (context)=>Counter()),
        //Provider<Dec>(create: (context)=>Dec()),
      ],
      child: MyApp()
    )));
} 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    final dec = Provider.of<Dec>(context);
    
    return Scaffold(
      appBar: AppBar(title: Text('Provier count')),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                      width: 120,
                      height: 100,
                      color: Colors.grey,
                      child: Center(
                          child: Text(
                        '${counter.count}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textScaleFactor: 1.5,
                      ))),
                  Container(
                      width: 120,
                      height: 100,
                      color: Colors.grey,
                      child: Center(
                          child: Text(
                        '${dec.count_a}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textScaleFactor: 1.5,
                      ))),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  width: 120,
                  height: 100,
                  color: Colors.grey,
                  child: Center(
                      child: Text(
                    '${counter.count + dec.count_a}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textScaleFactor: 1.5,
                  ))),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.add), 
                    onPressed: counter.increment_a,
                    tooltip: 'Counter for a',
                  ),
                  IconButton(
                    icon: Icon(Icons.add), 
                    onPressed: dec.increment_a,
                    tooltip: 'Counter for b',
                  )
                ],
              )
            ]),
      ),
    );
  }
}
