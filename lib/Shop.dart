import 'package:untitled/AccP.dart';
import 'package:untitled/ClothesP.dart';
import 'package:untitled/NewP.dart';
import 'package:untitled/main.dart';
import 'package:flutter/material.dart';

import 'ShoesP.dart';
import 'model/Product.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Categorie"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MyApp();
            }));
          },
        ),
        actions: [
          Icon(Icons.search)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          child: ListView(
            children: [
              ListTile(
                title: Text("New", style: TextStyle(fontSize: 35)),
                trailing: Image.asset("images examen/images.png", width: 200),
                onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return NewProducts();
              }));
                },
              ),
              SizedBox(height: 60,),
              ListTile(
                title: Text("Clothes", style: TextStyle(fontSize: 35)),
                trailing: Image.asset("images examen/Clothes.jpg", width: 200),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ClothesP();
                    }));
                  }
              ),
              SizedBox(height: 60,),
              ListTile(
                title: Text("Shoes", style: TextStyle(fontSize: 35)),
                trailing: Image.asset("images examen/Shoes.jpg", width: 200),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ShoesP();
                    }));
                  }
              ),
              SizedBox(height: 60,),
              ListTile(
                title: Text("Accessorie", style: TextStyle(fontSize: 35)),
                trailing: Image.asset("images examen/accessories.jpg", width: 150),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return AcsP();
                    }));
                  }
              ),

            ],
          ),
        )
      ),
    );
  }
}

