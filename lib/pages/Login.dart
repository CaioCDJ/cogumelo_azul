import 'package:cogumelo_azul/pages/Cadastro.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade600,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    //child: Image.asset('assets/images/logo.jpg'),
                  ),
                ),
                Center(
                    child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'L o g i n',
                    style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
                  ),
                )),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 15.0, right: 15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email:",
                      hintText: "exemplo@exemplo.com",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 15.0, right: 15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Senha:",
                    ),
                  ),
                ),
                TextButton(
                  child: Text('Esqueceu sua senha?'),
                  onPressed: () {},
                ),
                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Confirmar",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                TextButton(
                  child: Text(
                    'Não tem conta? Se Cadastre',
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Cadastro()));
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
