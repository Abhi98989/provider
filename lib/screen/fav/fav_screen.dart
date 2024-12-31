import 'package:flutter/material.dart';
import 'package:pro_example/provider/fav_provider.dart';
import 'package:pro_example/screen/fav/my_favitem_screen.dart';
import 'package:provider/provider.dart';

class FavScreen extends StatefulWidget {
  const FavScreen({super.key});

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  List<int> selectedItem =[];

  @override
  Widget build(BuildContext context) {
    // final favouriteProvider = Provider.of<FavouriteItemProvider>(context);
    // print("build");
    return Scaffold(
      appBar: AppBar(
        title:const Text('Favorites App'),
        actions: [
          InkWell(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyFavouriteItemScreen()));
            },
            child:const Icon(Icons.favorite)
          ),
          const SizedBox(width: 25,)
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
            itemCount: 100,
            itemBuilder:(context ,index){
              return Consumer<FavouriteItemProvider>(builder: (context ,value,child){
                return ListTile(
                onTap: (){
                  if(value.selectedItem.contains(index)){
                    value.removeItem(index);
                  }else{
                    value.addItem(index);

                  }
                },
                title: Text('Item $index'),
                trailing: Icon(value.selectedItem.contains(index)? Icons.favorite:Icons.favorite_border_outlined),
              );
              });
            }
            )
          )

        ],
      )
      
    );
  }
}