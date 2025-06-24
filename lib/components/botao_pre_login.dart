import 'package:flutter/material.dart';
import '../views/login.dart';

class BotaoPreLogin extends StatelessWidget {
  IconData icon;
  String text;

  BotaoPreLogin(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login())),
      },
      child: Card(
        child: Container(
          // padding: EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width * 0.3,
          height: 100,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: 
            [
              Icon(icon, color: Color.fromARGB(255, 236, 9, 0),),
              SizedBox(height: 5,),
              Text(text, style: TextStyle(color: Colors.grey), textAlign: TextAlign.center,)
            ]
          ),
        ),
      ),
    );
  }
}
