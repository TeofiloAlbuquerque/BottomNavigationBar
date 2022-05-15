import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 250, 250, 250)),
          child: const Center(
            child: Image(
              image: AssetImage('assets/images/home.png'),
            ),
          ),
        ),
      ],
    );
  }
}
