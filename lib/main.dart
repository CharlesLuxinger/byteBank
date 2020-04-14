import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Transferência"),
          ),
          body: TransfersList(),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
          ),
        ),
      ),
    );

class TransfersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransferItem(Transfer(1234, 100.0)),
        TransferItem(Transfer(1235, 200.0)),
        TransferItem(Transfer(1236, 300.0)),
      ],
    );
  }
}

class TransferItem extends StatelessWidget {
  final Transfer _transfer;

  TransferItem(this._transfer);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transfer._value.toString()),
        subtitle: Text(_transfer._account.toString()),
      ),
    );
  }
}

class Transfer {
  final int _account;
  final double _value;

  Transfer(this._account, this._value);
}
