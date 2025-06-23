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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('pessoa_login.jpeg'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BotaoPreLogin(Icons.message,'Ajuda'),
              BotaoPreLogin(Icons.lock_open,'ID Santander'),
              BotaoPreLogin(Icons.logout,'Acessar sua\nconta')
          ],),
          Container(
            height: 100,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25)
            ),
            color: Colors.blue
            ),
            child: Row(
              children: [
                Icon(Icons.ac_unit, size: 35,), 
                Text("Pagar ou cobrar", style: TextStyle(fontSize: 16),)
              ],
            ),
          )
        ],
      ),
    );
  }
}