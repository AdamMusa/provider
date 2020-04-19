import 'package:flutter/material.dart';
import 'package:provi/provider_model.dart';
import 'package:provider/provider.dart';

void main() => runApp(
  MaterialApp(home:ChangeNotifierProvider(
    create: (context)=>Counter(),
    child: MyApp(),
    ))
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return Scaffold(
      body: Center(child: Column(
        children:<Widget>[
          Text('Vous avez appuyé : '),
          Text('${counter.count}')
        ]
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.increment,
        child: Icon(Icons.add),
      )
    );
  }
}