import 'package:flutter/material.dart';

class AppResponsive extends StatelessWidget {
  const AppResponsive({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.teal)),
      home: Scaffold(
        appBar: AppBar(title: Text('responsive App'), centerTitle: true),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth > 500) {
              return Row(
                children: [
                  Card(
                    child: Container(
                      width: 150,
                      height: 150,
                      color: Colors.amber,
                    ),
                  ),
                  Card(
                    child: Container(
                      width: 150,
                      height: 150,
                      color: Colors.green,
                    ),
                  ),
                ],
              );
            } else {
              return Column(
                children: [
                  Card(
                    child: Container(
                      width: 150,
                      height: 150,
                      color: Colors.green,
                    ),
                  ),
                  Card(
                    child: Container(
                      width: 150,
                      height: 150,
                      color: Colors.amber,
                    ),
                  ),
                ],
              );
            }
          },
        ),
        /* Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(
              flex: 1,
              child: Container(color: Colors.blue, width: 100, height: 50),
            ),
            Expanded(
              flex: 3,
              child: Container(color: Colors.red, width: 50, height: 50),
            ),
            Expanded(
              flex: 3,
              child: Container(color: Colors.pink, width: 400, height: 50),
            ),
          ],
        ), */
      ),
    );
  }
}
