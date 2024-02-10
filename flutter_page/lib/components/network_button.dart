import 'package:flutter/material.dart';

class NetworkButton extends StatelessWidget {
  String network;
  String net;
  NetworkButton({super.key, required this.net, required this.network});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromRGBO(44, 39, 33, 1),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color.fromRGBO(227, 164, 85, 1))),
      // height: 10,
      // width: 100,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: IntrinsicHeight(
          child: Row(
            children: [
              const CircleAvatar(
                radius: 5,
                backgroundColor: Colors.green,
              ),
              const SizedBox(
                width: 7,
              ),
              Text(
                network,
                style: const TextStyle(fontSize: 10, color: Colors.white, letterSpacing: 5, ),
              ),
              const VerticalDivider(
                color: Color.fromRGBO(227, 164, 85, 1),
              ),
              Text(
                net,
                style: const TextStyle(fontSize: 8, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
