
import 'package:flutter/material.dart';

class Chess extends StatefulWidget {
  const Chess({super.key});

  @override
  State<Chess> createState() => _ChessState();
}

class _ChessState extends State<Chess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: const Text('CHESS',style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Container(
          height: 360,
          width: 360,
          color: Colors.black,
          child: Column(
            children: [
              Row(
                children: [
                  white(),
                  black(),
                  white(),
                  black(),
                  white(),
                  black(),
                  white(),
                  black(),
                ],
              ),
              Row(
                children: [
                  black(),
                  white(),
                  black(),
                  white(),
                  black(),
                  white(),
                  black(),
                  white(),
                ],
              ),
              Row(
                children: [
                  white(),
                  black(),
                  white(),
                  black(),
                  white(),
                  black(),
                  white(),
                  black(),
                ],
              ),
              Row(
                children: [
                  black(),
                  white(),
                  black(),
                  white(),
                  black(),
                  white(),
                  black(),
                  white(),
                ],
              ),
              Row(
                children: [
                  white(),
                  black(),
                  white(),
                  black(),
                  white(),
                  black(),
                  white(),
                  black(),
                ],
              ),
              Row(
                children: [
                  black(),
                  white(),
                  black(),
                  white(),
                  black(),
                  white(),
                  black(),
                  white(),
                ],
              ),
              Row(
                children: [
                  white(),
                  black(),
                  white(),
                  black(),
                  white(),
                  black(),
                  white(),
                  black(),
                ],
              ),
              Row(
                children: [
                  black(),
                  white(),
                  black(),
                  white(),
                  black(),
                  white(),
                  black(),
                  white(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget white()
{
  return Container(
    height: 45,
    width: 45,
    color: Colors.white,
  );
}
Widget black()
{
  return Container(
    height: 45,
    width: 45,
    color: Colors.black,
  );
}
