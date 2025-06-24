import 'package:app_santander/components/botao_pre_login.dart';
import 'package:flutter/material.dart';

class PreLogin extends StatefulWidget {
  const PreLogin({super.key});

  @override
  State<PreLogin> createState() => _PreLoginState();
}

class _PreLoginState extends State<PreLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 249, 252),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 236, 9, 0),
        iconTheme: IconThemeData(color: Colors.white),
        title: Image.asset('santander_nome_login2.png', height: 60,),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.place_outlined
            ),
          )
        ],
      ),
      drawer: Drawer(),
      body: Column(
  children: [
    Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('pessoa_login.jpeg'),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BotaoPreLogin(Icons.message, 'Ajuda'),
                BotaoPreLogin(Icons.lock_open, 'ID Santander'),
                BotaoPreLogin(Icons.logout, 'Acessar sua\nconta'),
              ],
            ),
          ],
        ),
      ),
    ),
    Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            offset: Offset(0, -4),
            blurRadius: 6,
            spreadRadius: 0,
          )
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.swipe_up_outlined, size: 35, color: Color.fromARGB(255, 236, 9, 0)),
          SizedBox(width: 15),
          Text(
            "Pagar ou Cobrar",
            style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 236, 9, 0)),
          ),
        ],
      ),
    ),
  ],
      ),
    );
  }
}