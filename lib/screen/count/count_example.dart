import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/count_provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}
class _CountExampleState extends State<CountExample> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    // print("countProvider");
    Timer.periodic(const Duration(seconds: 3), (timer) {
      countProvider.increment();
    });
  }
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    // print("build");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title:const Center(child: Text("Count Example",style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
        
      ),
      body:Center(child: Consumer<CountProvider>(builder: (context, value, child){
        return Text(value.count.toString(),style:const TextStyle(color: Colors.deepPurple, fontSize: 30, fontWeight: FontWeight.bold),);
      })) ,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.increment();
        },
        child:const Icon(Icons.add, color: Colors.white,),
        backgroundColor: Colors.deepPurple,
      )
    );
  }
}