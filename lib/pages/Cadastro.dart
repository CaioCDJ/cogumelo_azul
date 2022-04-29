import 'package:cogumelo_azul/pages/Login.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({Key? key}) : super(key: key);

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
                    'C a d a s t r o',
                    style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
                  ),
                )),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 15.0, right: 15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Nome",
                      hintText: "Julio Cesar da Silva",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 15.0, right: 15.0),
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
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 15.0, right: 15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Repita sua senha:",
                    ),
                  ),
                ),
                TextButton(
                  child: Text('Ja tem uma conta? Faça o Login'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
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
                )
              ],
            ),
          ),
        ));
  }
}
