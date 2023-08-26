import 'package:flutter/material.dart';
import 'package:train_on_state_management/screens/page3..dart';
import 'package:train_on_state_management/screens/page2.dart';

class pagetwo extends StatefulWidget {
  const pagetwo({super.key});

  @override
  State<pagetwo> createState() => _Task2State();
}

class _Task2State extends State<pagetwo> {
  bool isHiddenPass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 12, 8, 56),
        automaticallyImplyLeading: false,
        title: const Center(child: Text('Page 2')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: TextField(
                obscureText: isHiddenPass,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {
                      passView();
                    },
                    icon: Icon(
                      isHiddenPass ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  labelText: 'Enter your password',
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom:100),
              child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 12, 8, 56))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => pagethree(),
                      ),
                    );
                  },
                  child: const Text('Next Task')),
            )
          ],
        ),
      ),
    );
  }

  void passView() {
    if (isHiddenPass == true) {
      isHiddenPass = false;
    } else {
      isHiddenPass = true;
    }
    setState(() {});
  }
}
