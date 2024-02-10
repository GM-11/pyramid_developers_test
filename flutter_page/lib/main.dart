import 'package:flutter/material.dart';
import 'package:flutter_page/components/connect_button.dart';
import 'package:flutter_page/components/network_button.dart';
import 'package:flutter_page/components/services_modal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: const Color.fromARGB(1, 0, 19, 18)),
      ),
      home: const Root(),
    );
  }
}

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(3, 26, 25, 1),
      appBar: AppBar(
        title: Row(
          children: [
            NetworkButton(net: "Skynet", network: "CERTIK"),
            const Spacer(),
            const ConnectButton(),
            const SizedBox(width: 10),
            Image.asset(
              "assets/images/cart.png",
              scale: 1.5,
            )
          ],
        ),
        backgroundColor: const Color.fromRGBO(3, 26, 25, 1),
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 20),
          child: Container(
            height: 2,
            color: const Color.fromRGBO(255, 215, 159, 1),
          ),
        ),
      ),
      body: ListView(children: [const ServicesModal()]),
    );
  }
}
