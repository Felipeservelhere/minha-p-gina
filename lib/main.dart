import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LayoutBuilder Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('LayoutBuilder Example'),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 600) {
              // Layout para telas largas
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      height: 200,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.red,
                      height: 200,
                    ),
                  ),
                ],
              );
            } else {
              // Layout para telas pequenas
              return Column(
                children: [
                  Container(
                    color: Colors.blue,
                    height: 200,
                  ),
                  Container(
                    color: Colors.red,
                    height: 200,
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
