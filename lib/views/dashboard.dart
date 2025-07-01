import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool cardOpen = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height:
                cardOpen
                    ? MediaQuery.of(context).size.height * 0.49
                    : MediaQuery.of(context).size.height * 0.36,
            child: Stack(
              children: [
                Image.asset("fundo_dashboard.png"),
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("teste3.png", width: 150),
                      Row(
                        children: [
                          Icon(Icons.search_off_outlined, color: Colors.white),
                          Icon(Icons.message_outlined, color: Colors.white),
                          Icon(
                            Icons.notifications_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 145,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Olá, Rhyan",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Text(
                          "Ag 4317 Cc 01478-9",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.26,
                  child: Padding(
                    padding: EdgeInsets.only(left: 12, right: 12),
                    child: Card(
                      elevation: 10,
                      color: Colors.white,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.93,
                        height: cardOpen ? null : null,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.monetization_on_outlined,
                                        color: Colors.red,
                                      ),
                                      SizedBox(width: 18),
                                      Text(
                                        "Saldo Disponível",
                                        style: TextStyle(fontSize: 17),
                                      ),
                                    ],
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      cardOpen = !cardOpen;
                                    });
                                  },
                                  icon:
                                      cardOpen
                                          ? Icon(
                                            Icons.keyboard_arrow_down,
                                            size: 30,
                                          )
                                          : Icon(
                                            Icons.keyboard_arrow_up,
                                            size: 30,
                                          ),
                                ),
                              ],
                            ),
                            cardOpen
                                ? Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "R\$ 1.000.000,00",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text("Saldo + Limite: R\$ 343,95"),
                                        SizedBox(height: 5),
                                        Text(
                                          "Entenda seu limite",
                                          style: TextStyle(
                                            color: Colors.red,
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor: Colors.red,
                                          ),
                                        ),
                                        Divider(height: 30),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                bottom: 8.0,
                                              ),
                                              child: Text(
                                                "Ver extrato",
                                                style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 17,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                                : Container(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
