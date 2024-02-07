import 'package:flutter/material.dart';
import 'package:gridview/costum.dart';

class builder extends StatelessWidget {
  const builder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('GridView.builder Example'),
          backgroundColor: Colors.lightGreen,
        ),
        body: SafeArea(
          child:Column(
          children: [
            Expanded(child:GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
            crossAxisSpacing: 8.0, // Spacing between columns
            mainAxisSpacing: 8.0, // Spacing between rows
                  ),
                  itemCount: 20, // Number of items in the grid
                  itemBuilder: (BuildContext context, int index) {
            // The itemBuilder callback is called for each item in the grid
            return Card(
              child: Center(
                child: Text('Item $index'),
              ),
            );
                  },
                ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const  GridViewCustomPage(),)
              );
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 233, 253, 6),
                padding: const EdgeInsets.all(8.0),
                textStyle: const TextStyle(fontSize: 18),
                side: const BorderSide(color: Colors.black)
              ),
             child: const Text("Fourth Method"))
          ],
          
        ),
        )
    );
  }
}
