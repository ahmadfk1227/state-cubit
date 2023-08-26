import 'package:flutter/material.dart';
import 'package:train_on_state_management/screens/page4.dart';

class pagethree extends StatefulWidget {
  pagethree({super.key});

  @override
  State<pagethree> createState() => _Task3State();
}

class _Task3State extends State<pagethree> {
  List<String> players = [
    'player 1',
    'player 2',
    'player 3',
    'player 4',
    'player 5',
    'player 6',
    'player 7',
    'player 8',
    'player 9',
    'player 10',
    'player 11',
    'player 12',
    'player 13',
    'player 14',
    'player 15',
    'player 16',
    'player 17',
    'player 18',
    'player 19',
    'player 20',
  ];

  String? currentOption;

  @override
  void initState() {
    super.initState();
    currentOption = players[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 12, 8, 56),
          automaticallyImplyLeading: false,
          title: const Center(child: Text('Page 3')),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              for (int i = 0; i < players.length; i++) ...[
                ListTile(
                  title: Text(players[i]),
                  leading: Radio(
                    value: players[i],
                    groupValue: currentOption,
                    fillColor: MaterialStateColor.resolveWith(
                        (states) => const Color.fromARGB(255, 12, 8, 56)),
                    onChanged: (value) {
                      setState(() {
                        currentOption = value.toString();
                      });
                    },
                  ),
                )
              ],
              Padding(
                padding: const EdgeInsets.only(bottom: 30, top: 30),
                child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 12, 8, 56),
                    )
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const Task4(),
                        ),
                      );
                    },
                    child: const Text('Next')),
              )
            ],
          ),
        ));
  }
}
