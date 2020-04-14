import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Transferência"),
          ),
          body: Column(
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: Icon(Icons.monetization_on),
                  title: Text("Teste"),
                  subtitle: Text("SubTeste"),
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
