import 'package:flutter/material.dart';
import 'package:gridview/builder.dart';

class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Example'),
        backgroundColor: Colors.pink,
      ),
      body:SafeArea(child: 
       Column(
         children: [
          Expanded(child:
           GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            children: [
              Container(color: Colors.red),
              Container(color: Colors.blue),
              Container(color: Colors.green),
              Container(color: Colors.yellow),
              Container(color: Color.fromARGB(255, 39, 6, 185)),
              Container(color: Color.fromARGB(255, 192, 9, 33)),
              Container(color: Color.fromARGB(255, 44, 200, 20)),
            ],
                 ),
          ),
           ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const  builder(),)
              );
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 244, 236, 5),
                padding: const EdgeInsets.all(8.0),
                textStyle: const TextStyle(fontSize: 18),
                side: const BorderSide(color: Colors.black)
              ),
             child: const Text("Fourth Method"))
         ],
       )
      ),
    );
  }
}