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
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.red,
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              child: Image.asset("assets/images/chat.png"),
            ),
            FloatingActionButton(
              backgroundColor: Colors.transparent,
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                  side: const BorderSide(
                    color: Color.fromRGBO(186, 155, 114, 1),
                  )),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.menu,
                    color: Color.fromRGBO(186, 155, 114, 1),
                    size: 35,
                  ),
                  Text(
                    "Menu",
                    style: TextStyle(
                        color: Color.fromRGBO(186, 155, 114, 1), fontSize: 8),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36),
        child: ListView(physics: const BouncingScrollPhysics(), children: [
          const SizedBox(height: 30),
          const ServicesModal(),
          const SizedBox(height: 30),
          const Text(
            "Products",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const Text(
            "HedgePay offers software products and services to crypto projects and utilizes a percentage of profits to improve our HedgeFi reward pool.",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          Image.asset(
            "assets/images/globe.png",
          )
        ]),
      ),
    );
  }
}
