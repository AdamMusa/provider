import 'package:flutter/material.dart';
import 'package:provi/provider_model.dart';
import 'package:provider/provider.dart';

void main() => runApp(MaterialApp(
        home: ChangeNotifierProvider(
      create: (context) => Counter(),
      child: MyApp(),
    )));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
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
                        '${counter.count_a}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textScaleFactor: 1.5,
                      ))),
                  Container(
                      width: 120,
                      height: 100,
                      color: Colors.grey,
                      child: Center(
                          child: Text(
                        '${counter.count_b}',
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
                    '${counter.somme()}',
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
                    onPressed: counter.increment_b,
                    tooltip: 'Counter for b',
                  )
                ],
              )
            ]),
      ),
    );
  }
}
