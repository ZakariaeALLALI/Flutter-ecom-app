import 'package:untitled/Shop.dart';
import 'package:flutter/material.dart';

import 'model/Product.dart';


class NewProducts extends StatefulWidget {
  const NewProducts({super.key});

  @override
  State<NewProducts> createState() => _NewProductsState();
}

class _NewProductsState extends State<NewProducts> {
  List <Product> products = [
    Product(name: "Black Dress", img: "images examen/robe.jpg", price: "9"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)
            {
              return Shop();
            }));
          },
        )
      ),
      body: GridView.builder(
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1

          ),
          itemBuilder: (context,index){
            return getCard(products[index]);
          })
    );
  }
}

Widget getCard(Product produit){
  return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3,blurRadius: 5)
              ]),
          child:  Column(
            children: [
              Image.asset(produit.img, height: 130,),
              Text(produit.name),
              Text(produit.price)
            ],
          )));

}