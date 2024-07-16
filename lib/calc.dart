import 'package:flutter/material.dart';
class Task extends StatefulWidget {
  const Task({super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: const Text('Calc App',style:TextStyle(color: Colors.white),
        ),

      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              '$count',
              style: TextStyle(fontSize: 60, color: Colors.grey),
            ),
          ),

          SizedBox(
            height: 90,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    count-=2;
                  });
                },
                child: containerdata(name: '-2'),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    count+=2;
                  });
                },
                child: containerdata(name: '+2'),

              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    count-=4;
                  });
                },
                child: containerdata(name: '-4'),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    count +=4;
                  });
                },
                child: containerdata(name: '+4'),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                count =0;
              });
            },
            child: containerdata(name: 'Clear'),
          ),
        ],

      ),

    );
  }
  Container containerdata({required String name}){
    return Container(
      margin: EdgeInsets.all(10),
      height: 50,
      width: 120,
      decoration: BoxDecoration(
        color: Color(0xff54759E),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 4)],
      ),
      alignment: Alignment.center,
      child: Text(
        '$name',
        style: TextStyle(fontSize: 25, color: Colors.white),
      ),
    );
  }
}

int count =0;