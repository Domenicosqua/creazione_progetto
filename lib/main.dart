import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.tealAccent)),
      home: Scaffold(
        appBar: AppBar(title: Text('First App'), centerTitle: true),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.alarm),
        ),
        drawer: Drawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  if (constraints.maxWidth > 500) {
                    return Image.asset('assets/images/image.png', height: 200);
                  } else {
                    return Image.asset('assets/images/image.png', height: 400);
                  }
                },
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.zoom_in)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward)),
                ],
              ),
              Container(
                color: Colors.amberAccent,
                width: size.width * 0.75,
                child: Column(
                  children: [
                    Text('Visita il nostro store'),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, size.height * 0.01, 0, 0),
                child: Flex(
                  direction: Axis.horizontal,
                  children: [
                    Expanded(child: Container(height: 30, color: Colors.blue)),
                    Expanded(child: Container(height: 30, color: Colors.red)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
