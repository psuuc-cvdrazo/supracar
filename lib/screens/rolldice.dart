import 'dart:math';

import 'package:flutter/material.dart';

class RollDiceScreen extends StatefulWidget {
  const RollDiceScreen({super.key});

  @override
  State<RollDiceScreen> createState() => _RollDiceScreenState();
}

class _RollDiceScreenState extends State<RollDiceScreen> {
  var random = 5;
  List<String> supra = [
    'https://i.pinimg.com/originals/ae/5b/c0/ae5bc0f3daf3be89e876baf750f12f50.gif',
    'https://media.tenor.com/ay4044GEtfgAAAAC/supra-vin-diesel.gif',
    'https://www.icedtea-aesthetics.com/cdn/shop/articles/Toyota_Supra_Aesthetic_GIF.gif?v=1629753233',
    'https://media.tenor.com/2tIvrVmSn90AAAAC/toyota-supra-supra.gif',
    'https://i.pinimg.com/originals/04/43/d5/0443d5836f390088b83ce2401598907b.gif',
    'https://media.tenor.com/P57uycLsnsIAAAAC/toyota-supra-supra.gif',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 32, 35, 37),
            Color.fromARGB(255, 101, 110, 125)
          ]),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("supra"),
              const SizedBox(
                height: 50,
              ),
              Image.network(supra[random]),
              const SizedBox(
                height: 50,
              ),
              Text("1997"),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    var randomC = Random().nextInt(5);
                    setState(() {
                      random = randomC;
                      print('button pressed');
                    });
                  },
                  child: const Text(
                    'Roll',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 202, 58),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
