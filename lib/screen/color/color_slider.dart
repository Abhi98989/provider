import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/color_provider.dart';

class ColorSlider extends StatefulWidget {
  const ColorSlider({super.key});

  @override
  State<ColorSlider> createState() => _ColorSliderState();
}

class _ColorSliderState extends State<ColorSlider> {
  // double value = 1.0;
  @override
  Widget build(BuildContext context) {
    // print("build");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Color Slider'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<ColorProvider>(builder: (context, value, child){
                return Slider(
                min: 0.0,
                max: 1.0,
                // divisions: 10,
                value: value.value, onChanged:(val){
                value.setdoubleValue(val);
              });
              }),
              Consumer<ColorProvider>(builder: (context, value, child){
                return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      // width: 100,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple.withOpacity(value.value),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(child: Text('Color',style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),),
                  )
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      // width: 100, 
                      decoration: BoxDecoration(
                        color: Colors.deepOrange.withOpacity(value.value),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(child: Text('Color',style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),),
                  )
                  ),
                ],
              );
              })
              
            ],
          ),
        ),
    );
  }
}