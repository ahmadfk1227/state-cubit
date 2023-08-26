import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_on_state_management/business%20logic/change%20color/change_color_cubit.dart';
import 'package:train_on_state_management/screens/page1.dart';
import 'package:train_on_state_management/screens/page2.dart';
import 'package:train_on_state_management/widgets/used_widgets.dart';

// ignore: must_be_immutable
class First_page extends StatelessWidget {
  First_page({super.key});
  List categories = ['Ahmed', 'farouk', 'mokhtar', 'CS', 'developer', 'Gamer'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 15, 145, 150),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 12, 8, 56),
        title: const Center(child: Text('page 1')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top:50),
            child: SizedBox(
              height: 200,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                for (int i = 0; i < categories.length; i++)
                  BlocBuilder<ChangeColorCubit, ChangeColorState>(
                    builder: (context, state) {
                      return button(
                          text: categories[i],
                          colortext: state.selectedButtonIndex == i
                              ? Colors.white
                              : Colors.black,
                          colorbox: state.selectedButtonIndex == i
                              ? const Color.fromARGB(255, 12, 8, 56)
                              : Colors.white,
                          onpressed: () {
                            context.read<ChangeColorCubit>().changecolor(i);
                          });
                    },
                  ),
              ]),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                  Color.fromARGB(255, 12, 8, 56),
                )),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const pagetwo(),
                    ),
                  );
                },
                child: const Text('Next Task')),
          )
        ],
      ),
    );
  }
}
