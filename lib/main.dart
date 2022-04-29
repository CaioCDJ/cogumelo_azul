import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/navDrawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: home(),
    );
  }
}

// ignore: camel_case_types
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homestate();
}

// ignore: camel_case_types
class _homestate extends State<home> {
  final List<String> _listView = [
    'https://cdn.icon-icons.com/icons2/829/PNG/128/Super_TES_icon-icons.com_66600.png',
    'https://cdn.icon-icons.com/icons2/829/PNG/128/TES_64_icon-icons.com_66599.png',
    'https://cdn.icon-icons.com/icons2/829/PNG/128/DreamVast_icon-icons.com_66585.png',
    'https://cdn.icon-icons.com/icons2/829/PNG/128/Vena_Oasis_icon-icons.com_66590.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: navDrawer(),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            title: const Text('CogumeloAzul'),
            backgroundColor: Colors.transparent,
            elevation: 0.0),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/home.jpg'),
                          fit: BoxFit.cover)),
                  child: Center(
                    child: Text(
                      "Seja Bem vindo",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
              Divider(),
              Text(
                'Produtos em destaque',
                style: TextStyle(fontSize: 25),
              ),
              Expanded(
                  child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 2,
                mainAxisSpacing: 10,
                children: _listView
                    .map((item) => Card(
                          color: Colors.transparent,
                          elevation: 0,
                          shadowColor: Colors.black,
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(item),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                Divider(),
                                TextButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.blue),
                                  ),
                                  child: Text(
                                    'Ver mais',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {},
                                )
                              ],
                            ),
                          ),
                        ))
                    .toList(),
              )),
              Divider(),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "ver mais",
                    style: TextStyle(
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                        color: Colors.blueAccent),
                  ))
            ],
          ),
        ));
  }
}
