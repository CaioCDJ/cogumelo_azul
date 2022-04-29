import 'dart:ui';
import 'package:cogumelo_azul/main.dart';
import 'package:cogumelo_azul/pages/Login.dart';
import '../pages/Perfil.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class navDrawer extends StatefulWidget {
  const navDrawer({Key? key}) : super(key: key);

  @override
  State<navDrawer> createState() => _navDrawerState();
}

class _navDrawerState extends State<navDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountEmail: Text('data@data.com'),
            accountName: Text('data'),
            currentAccountPictureSize: const Size.square(72.0),
            onDetailsPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Perfil()));
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const home()));
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag_outlined),
            title: const Text('Produtos'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: const Text('Login'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Login()));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: const Text('Configuração'),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
