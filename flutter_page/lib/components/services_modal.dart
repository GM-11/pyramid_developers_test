import 'package:flutter/material.dart';

class ServicesModal extends StatefulWidget {
  const ServicesModal({super.key});

  @override
  State<ServicesModal> createState() => _ServicesModalState();
}

class _ServicesModalState extends State<ServicesModal> {
  final _services = [
    {"name": "List of Services", "icon": "assets/images/services/1.png"},
    {"name": "Staking Services", "icon": "assets/images/services/2.png"},
    {"name": "Market Making", "icon": "assets/images/services/3.png"},
    {"name": "Audit & KYC", "icon": "assets/images/services/4.png"},
    {"name": "HedgeTalk", "icon": "assets/images/services/5.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(12, 39, 38, 1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color.fromRGBO(186, 155, 114, 1),
        ),
      ),
      child: SizedBox(
        height: 500,
        width: 20,
        child: ListView(
          children: _services
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(52, 52, 52, 1),
                    child: ListTile(
                      trailing: IconButton(
                        icon: const Icon(Icons.arrow_right_sharp, color: Colors.white,),
                        onPressed: () {},
                      ),
                      title: Text(
                        e['name']!,
                        style: const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      leading: Image.asset(e['icon']!),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
