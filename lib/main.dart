import 'package:flutter/material.dart';

void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: TransferForm(),
      ),
    );
  }
}

class TransferForm extends StatelessWidget {
  final TextEditingController _accountController = TextEditingController();
  final TextEditingController _valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nova Transferência"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: TextField(
              controller: _accountController,
              style: TextStyle(
                fontSize: 16.0,
              ),
              decoration: InputDecoration(
                labelText: "Número da Conta",
                hintText: "0000",
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: TextField(
              controller: _valueController,
              style: TextStyle(
                fontSize: 16.0,
              ),
              decoration: InputDecoration(
                  labelText: "Valor",
                  hintText: "0.00",
                  icon: Icon(Icons.monetization_on)),
              keyboardType: TextInputType.number,
            ),
          ),
          RaisedButton(
            color: Colors.blueAccent,
            textColor: Colors.white,
            padding: const EdgeInsets.all(0.0),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Text('Confirmar', style: TextStyle(fontSize: 18)),
            ),
            onPressed: () {
              var _account = int.tryParse(_accountController.text);
              var _value = double.tryParse(_valueController.text);

              if (_account != null && _value != null) {
                Transfer(_account, _value);
              }
            },
          ),
        ],
      ),
    );
  }
}

class TransfersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transferências"),
      ),
      body: Column(
        children: <Widget>[
          TransferItem(Transfer(1234, 100.0)),
          TransferItem(Transfer(1235, 200.0)),
          TransferItem(Transfer(1236, 300.0)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
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
