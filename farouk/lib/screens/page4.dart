import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_on_state_management/business%20logic/Replace_ui/replace_ui_cubit_cubit.dart';
import 'package:train_on_state_management/business%20logic/counter_cubit/counter_cubit.dart';

class Task4 extends StatelessWidget {
  const Task4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
          automaticallyImplyLeading: false,
          title: const Center(child: Text('Page 4'))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      context.read<CounterCubit>().decrement();
                    },
                    child: const Text('-'),
                  style:ElevatedButton.styleFrom(
                    primary:Color.fromARGB(255, 12, 8, 56),
                  ),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BlocBuilder<CounterCubit, CounterState>(
                    builder: (context, state) {
                      return Text(
                          context.read<CounterCubit>().counter.toString());
                    },
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      context.read<CounterCubit>().increment();
                    },
                    child: const Text('+'),
                  style:ElevatedButton.styleFrom(
                    primary:Color.fromARGB(255, 12, 8, 56),
                  ),),
              ],
            ),
          ),
          const Spacer(),
          BlocBuilder<ReplaceUiCubit, ReplaceUiCubitState>(
            builder: (context, state) {
              if (state is ShowText) {
                return const Text('SUuuIIIIIIIIIIIIIIIIIIII');
              } else if (state is ShowImage) {
                return SizedBox(
                    height: 300,
                    width: 300,
                    child: Image(
                      image: NetworkImage('https://library.sportingnews.com/styles/crop_style_16_9_mobile_2x/s3/2023-07/cristiano%20ronaldo%20al%20nassr%202023-2024.jpg?h=920929c4&itok=CjPJ4-fZ '),)
                    );
              } else if (state is ShowRedCircle) {
                return Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.pinkAccent
                  ),
                );
              } else {
                return const Text('Reset button');
              }
            },
          ),
          const Spacer(),
          ElevatedButton(
              onPressed: () {
                context.read<ReplaceUiCubit>().showText();
              },
              child: const Text('For the text'),
            style:ElevatedButton.styleFrom(
              primary:Color.fromARGB(255, 12, 8, 56),
            ),),
          ElevatedButton(
              onPressed: () {
                context.read<ReplaceUiCubit>().showImage();
              },
              child: const Text('For the image'),
              style:ElevatedButton.styleFrom(
                primary:Color.fromARGB(255, 12, 8, 56),
              ),


          ),
          ElevatedButton(
              onPressed: () {
                context.read<ReplaceUiCubit>().showRedCircle();
              },
              child: const Text('Pink circle'),
            style:ElevatedButton.styleFrom(
              primary:Color.fromARGB(255, 12, 8, 56),
            ),


          ),
          ElevatedButton(
              onPressed: () {
                context.read<ReplaceUiCubit>().reset();
              },
              child: const Text('RESET'),
            style:ElevatedButton.styleFrom(
              primary:Color.fromARGB(255, 12, 8, 56),
            ),

          ),
          const Spacer(),
        ],
      ),
    );
  }
}
