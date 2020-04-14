import 'package:flutter/material.dart';

void main() => runApp(
      Column(
        children: <Widget>[
          Text(
            "First line",
            textDirection: TextDirection.ltr,
          ),
          Text(
            "Second Line",
            textDirection: TextDirection.ltr,
          ),
          Expanded(
            child: FittedBox(
              fit: BoxFit.contain,
              child: const FlutterLogo(),
            ),
          )
        ],
      ),
    );
