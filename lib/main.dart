import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
       debugShowCheckedModeBanner: false, 
        home: Home(),
      ),
    );

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String recuperar_senha="Recuperar Senha";

  TextEditingController login = TextEditingController();
   TextEditingController senha = TextEditingController();


  Widget buildTextField(String label, TextEditingController campo){
    return TextField (
            decoration: InputDecoration(
              labelText: label, labelStyle: TextStyle(color:Colors.black, fontSize: 20.0),
              border: OutlineInputBorder()
            ),
            style: TextStyle(color: Colors.black, fontSize: 25.0),
            keyboardType: TextInputType.number,
            controller: campo,
          );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
    
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
              child: Container(
                child: Image.asset('assets/images/logo.webp')               
              ),
            ),
            buildTextField("Login",login),
            Divider(),
            buildTextField("Senha",senha),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(recuperar_senha,style:TextStyle(color: Colors.blue, fontSize: 15.0),textAlign: TextAlign.end,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: 30.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 83, 64, 196),),
                  child: Text("Entrar",style: TextStyle(color: Colors.white, fontSize: 25.0),), 
                  onPressed: () {
        
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: 30.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 83, 64, 196),),
                  child: Text("Cadastar",style: TextStyle(color: Colors.white, fontSize: 25.0),), 
                  onPressed: () {
        
                  },
                ),
              ),
            ),              
          ],
        ),
      ),
    );
  }
}
