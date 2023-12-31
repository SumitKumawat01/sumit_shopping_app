import'package:flutter/material.dart';

import '../models/product.dart';

import '../widgets/product_item.dart';


class ProductOverviewScreen extends StatelessWidget {
final List<Product>loadedProducts=[
   Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),

    Product(id: 'P3',
     title: 'Yellow Scarff',
      description: 'warm and cozy-exactly what you need for the winter.',
       imageUrl: 'https://en.wikipedia.org/wiki/File:Yellow_scarf.jpg',
        price: 19.99,),
   
           

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(title:Text('MyShop'),
    ),
    body:GridView.builder(
      padding:const EdgeInsets.all(10.0),
      itemCount: loadedProducts.length,
      itemBuilder:(ctx,i)=>ProductItem(
        loadedProducts[i].id ,
       loadedProducts[i].title, 
       loadedProducts[i].imageUrl,
       ),
      gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:2,
        childAspectRatio:3/2,
        crossAxisSpacing: 10,
      mainAxisSpacing: 10)
    ),

    );

  
  }
}