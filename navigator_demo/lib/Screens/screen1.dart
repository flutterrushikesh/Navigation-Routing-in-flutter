import 'package:flutter/material.dart';
import 'package:navigator_demo/Screens/screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen1"),
        backgroundColor: Colors.blue.shade200,
        centerTitle: true,
        // automaticallyImplyLeading: false,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const Screen2();
                  },
                ),
              );
            },
            child: const Text("Next Screen (2)"),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Prev screen(HS)"),
          ),
        ],
      )),
    );
  }
}
